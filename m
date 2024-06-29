Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640641CF9B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719637463; cv=none; b=DqAkEC2JA9flaw68+vJxUuCmcISK0zZ1/COfQZzdE7N/5R2CDbkdet7LgYXm089ra1fecDh46JHaw8Rr7IpM4u1Fo8t/soD1ZjsZProGV4nmq2Heiu9vz2XzO6QS1NSkkff/DIA3sDkCLP/lSzAJAaHD8uGlCRJTIz4sWl8VDws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719637463; c=relaxed/simple;
	bh=gLHVpuElWWuvlD9i7Vl1YyRh6H8aVkqmE3ntwgd/J9w=;
	h=To:Subject:From:Message-Id:Date; b=A0Osks0oGHdOTnhmWBHD5LqEnOiwwQnQchgLBwYzJhQWD9G3FHra1WW8/4yKVdk5SxprelBeRkK60piQHgHKvqCp+BA42HfZQy9BdR68v80zmmnSsd6UGwA6a7qrYdv6lETbBbOYTvg40ziHSHvAT7Br9NuUYAT8x9kfiWN/tOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLNbSKaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLNbSKaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED431C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719637463;
	bh=gLHVpuElWWuvlD9i7Vl1YyRh6H8aVkqmE3ntwgd/J9w=;
	h=To:Subject:From:Date:From;
	b=RLNbSKaGSdeXWvGX92XeuZ5CZbxx1CoekuWqbO19tjSyFg70DvHWeCGjrLsjJawjc
	 1XRV3UdK+LEWjBCvAuo4/B4kQUMZ95BSsMbPIzilTq6WYUs+KgtJcfwmL+rLvqOUos
	 gHpxquzCm2ybn+EbaYa179t5rnsCMiNcMNtl9HJyNTdPL/PNrZ4cm6J5l8rr9WQd5F
	 lKKAKUQjaHQWvyNmGPu6vtEvn2Hl0jimF3KVi9Jn1HrX21D79E/9DL8JwvZJD1ZlIJ
	 8PDNqlKVuG/4OslL9PVZf0/qSd0ISAaUdPHs8ueW6867SPRSY0hnbbDcMkLEqtYLhl
	 SgpbzHrLLNqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF4FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963746282.11172.13941501942769722953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99db71bc9fa6350d224a0eb9aad519832e245ad32fcb65af99b28561191b24c
Date: Sat, 29 Jun 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719637462
