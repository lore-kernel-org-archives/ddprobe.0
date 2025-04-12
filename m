Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AAF219A80
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744488594; cv=none; b=CXs8jmFPjTWtmNLWKVGPgQX3Y/IHUQZL2ih4LY2q1Z93c9mfiPA0k0iyX8R1h+ec7W1YOa8gTxmumYL08faevRs9dkTcfJrEsPhIo/DeCQKfF2MiEZUWGr0bQ6aqzTJ8p5AAM0KPZB500+CEybKFX7RkmacEeSh13DAWk57E2e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744488594; c=relaxed/simple;
	bh=2jLr4r1OD+ofw3HgOcb393ZiysadHEUovZNFr8+fEEs=;
	h=To:Subject:From:Message-Id:Date; b=Xu8IgnrDPC4DhRK3zFvY7uVspoGHZfdn2xk7/kFyYCGFNZIC9aoQGP4sdeorTDg2NBXwb6Vp8B85B9PQ3pLG6Ubczlzro/5AFhf056GvdYjCe/RKEQNgrtpFc/CZdCUge+e4zekHb6Br39A/BVWm99fwODHWQAYVf8BERL4oszQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLCiQaFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLCiQaFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744488593;
	bh=2jLr4r1OD+ofw3HgOcb393ZiysadHEUovZNFr8+fEEs=;
	h=To:Subject:From:Date:From;
	b=LLCiQaFon9gmYWTYpQal56fRBLw+pvElc6IVJtSzPujAEnnpahyjTgUbt3j9JIZV9
	 diVHrH3xV+Dn4pDwALxdPqSptgxh2z0xkSHSA/pcHXG469APHLnbEvre4ncmTmfUPy
	 ei1wdn0IHYkoCmmPuC7KHU3IzrMkQJWFd1vNbsHuYB4n0ohajIRbsvxExbxNjddodA
	 wjyizzS3c1bu9hG24Q7N76FBCpV8TXoSxuLTuTwaZ3TgUzpX89VohQxQ2+2Qm92aNn
	 KhMVzqdKZ2+RWBnoRlXdh+otVBC7Y0OB/tp8t3yJxNwRYeFJpEhSrpwCPXvqWgKhBw
	 kh6fqaXKz/Rcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973FBC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448859359.10890.6694931987496361449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7723816ff9df899e57f9cd424e30736554bc3e8dbbf8aa4de96d45eace08e581
Date: Sat, 12 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744488593
