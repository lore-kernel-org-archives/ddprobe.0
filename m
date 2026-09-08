Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C7854A7C4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788874834; cv=none; b=mApbhalpSubgPKvWxE3Ssw5dSTGj/U+Dconc3U6n6IwguQpWv6dpfdO22o3XV3WUr0Wn9QRyJzjnJ4BQTtF0ysMQOGnA6QlCuhIJdx3nyvY5ml+KHK59Mhrc3Q9HBek3zuG5NhNF7qpFInYMKcz2BwFuwrmepfNzNGETEicl4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788874834; c=relaxed/simple;
	bh=KTwANk4RkbJv4L7VDqNRzWBinim5QvmirwLiceaxSVI=;
	h=To:Subject:From:Message-Id:Date; b=KMcCbJrxFY6G/LajMQSoO3ea0Nrb0O/sfuojSbJgtYLifeDRCDuOHn7vXOI5Ej5EXoGKIow5+zhQnZHIgB9mWdOQar8t4NM1gZB4BSMS3mxb03Cm1Qba4H7iNeHaAcs+Ilyha6E5Seuer9vd1c4MJ9lnic08bRXwYxtWsNSeVy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE1iU8R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE1iU8R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788874833;
	bh=KTwANk4RkbJv4L7VDqNRzWBinim5QvmirwLiceaxSVI=;
	h=To:Subject:From:Date:From;
	b=FE1iU8R8n8iTBvKp6Po4RcrWU+ULLoh/hdAcW6UFs543SzCH65fJmdPq8G+QoKln6
	 HyZD64JEmFZeR+qy+lBl5L4/vmhlAeJZbG1NY5zLq+7vWVU2Af1BeITVzj603yR70l
	 kU3taDx+QrgSy/H2H3hZJbgPPK+CXNZ/wc7NachG51urgjAoqQSo9c3t2mrddX4NY7
	 8NMhwDV50Wacqw9ZUOvM5KhkQdghNEkTPhwLrTByPcVDsHgE/bDMaZSaIYyb25OGNI
	 rBMd81U2vZvi/qbrL4W4Ph4kvQ3Een9/kPsUz2Mb/o643UI40NeUKW7w1AvBVcTT8v
	 sBb2Bnf1/iKVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37A5C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887483372.6700.13798163050458416178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfc15b296f0cd5fa447f7fdc8cfd69de616e7197337271aa9dade44257671b6
Date: Tue, 08 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788874833
