Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142796AA6
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE4NvHAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8553FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698651496;
	bh=9m9nAVVI1LRkYgZkucMLuoXaAqD2Y52u1G/3I75rU4g=;
	h=To:Subject:From:Date:From;
	b=JE4NvHAvXasKzNKTXI/gSRYjUfjzKaih/iLM7RiT+NV1xPH976sYpsCsdaSTJUQ0w
	 uzki+9W/I5pzY0TSahvrwU26kdkVNik2y3mRhxxI4FOhyrZY3SQoxWezpu5GoqwPP4
	 /DKU2d/NI+/7ZAor5EXlPV00XcckE2SrEsdoAcZql7UZpIAcaGaKfN2Vsf8ImbmnCG
	 l0Vd9pgkrAv2pBsoiiKe0TREX+YOTi3X2KYhQL8S2OY+pkoeUhv5yKsUEEvQgwQ9MV
	 cPY8M4Xku6wGI5+EAHcpq+/4qqENdc9eYA0e5lSg1BQvyUgwEeFKOFoalFjMmcUDUI
	 caH7P+51KxlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC49C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865149638.17669.14310481086483149437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b9c9078adbef887f21ec397a25adad13fdd1a69eef8d3f2fa5094998811e84
Date: Mon, 30 Oct 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698651496
