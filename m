Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC9189BB0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767168834; cv=none; b=cffXuUkJptnoQQMoWhXGvIltZr9ZnqAM+jJdgzmw0xgWv/o4OsDV2rfSOMBaWyRs7Fk7LgLk6rCqvrSSZXKrTCQOdY9js9LgguIhXQnvQmzudn7rsD9LtgyTaoiybZybi7bXRSDW0A5n82dG7+nWb9D5ZQgw5WxP2V5DN0g9IMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767168834; c=relaxed/simple;
	bh=iezsxDARN1UC+8K2y7zjFfAyTLDNWHykjW1a/2EV4z8=;
	h=To:Subject:From:Message-Id:Date; b=Hd11bC/IQEbLj9ksC6wo93NxFhl5KwLLTSxv8Jy4EfMv9gFy2OGIakqQr7MPI7nRzw5/iNtNqRR0648V3S794/g1+3uANefcn0gdVcdCVC1n2w/9x9fc+IpWtdFdb0zU5z+izzT/H5sqW8yjJ9HfNypjD3fEbMPEOwuJw3wtxuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETM4/Anh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETM4/Anh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03FFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767168833;
	bh=iezsxDARN1UC+8K2y7zjFfAyTLDNWHykjW1a/2EV4z8=;
	h=To:Subject:From:Date:From;
	b=ETM4/AnhAtEsxWa1ZEObDe7SeZOQSU2rfpWBPo46OyrLHmwhBl7gJ6Sk+hImYV54w
	 RG3HJY6QDt1hiiF0OVNh+7g+TytAGhk2n/uqrfJzC4Eeg4cGmEMSsnLGjQF931jb4v
	 u+A0hIm130/OiGodkKuL/cJ+M6/TOvBC0msxTBSQlMD5nsf5CYcB+6P2IlSJy4wR3g
	 TSHxPh9+3ASgFRKYfGyfRnwykdmmQjAvkeTrJ4zNaLU6APCSdQ9/5wwwLPUc4wOHKM
	 3D671BF6MsKCPawGiNXs/xOhbYHdOA+jFMff3JKrsUHkn5I6v2YpBMHTYM+Ickytot
	 h0Lj3zQvdEsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4BEE57E9
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716883357.23812.2560419160253923438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d317b2a0111cc7836b70661832552f42eb198b7d8aaf7471b6677b1379ae7e0
Date: Wed, 31 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767168833
