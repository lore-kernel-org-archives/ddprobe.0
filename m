Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7C42874E1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786670434; cv=none; b=oMtyrjp8jGBiRQT4GLcgt/2DTkYapCv59osbRhh6l/hlZFB2j5qd2ARc+tjCLCoBt+5XnsfD29x3JYU3PWz8oZTZ8Tisy6JuLbN0r1UvuBvhym1KQPcqTEvDzTKjW4u4TXit7Uo2u6jpjJO3nFF2KsBYklBnlgQbiudIdSzAoQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786670434; c=relaxed/simple;
	bh=IHRgLZLRTpR8E9nl0Mp7cinthiVXUCAIuVyzbMKkpwc=;
	h=To:Subject:From:Message-Id:Date; b=jGrcoHhu4UQTC3YZHuTgl97faYtRvl4uA1Ogpld5zucHJExeGnOkHXZ+N9P+mpMGz7ma1yriC6gzifxfYqQWXZWXY2crW5BinCMwW+cXho0hEHPgBRN9mSdjHFoMp6ybCW2X7ooHEdDshamsCUbYLK2TARtzK/AVe0gOQe+KtQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa5PxZJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa5PxZJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E3C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786670433;
	bh=IHRgLZLRTpR8E9nl0Mp7cinthiVXUCAIuVyzbMKkpwc=;
	h=To:Subject:From:Date:From;
	b=Pa5PxZJS9tBaVbR2wZWLTKunYA1wz6LEjMPlAShz1a5Sd/ncIisI1/3UlgP6E1LZn
	 9tF6wj9EbqDGbdYiAe4qYdf+dLw7qOPra1nsATAZpGb/u20ShV1qIBTTL7uUwSFIu7
	 K4IPHxa2x9jjNQyJLgx3Kjfgrc7xT6y5LQqgIBPQ01GzS49dElwYy9trg/s0Rn31QI
	 GGRDmNK8xYuDlKE+Gb9bs46OwKzSVGm5rmi0fh5YksFYcqdsLpNoc8i7z1A5TmQRgq
	 bcFyI+NnX/PkzNhRdLi/rqSx25A/npIwzCFcaUoMsWRj9XwuVDMe+CfdQWLFvBaaS3
	 fFNFGXm++uQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB66BC5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667043369.22389.18028566623098433489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee53f1391482428b704b64c194eac2e54220c0745d3fd045b92610649d36282f
Date: Fri, 14 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786670433
