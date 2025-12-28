Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4CC19F48D
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766955234; cv=none; b=lDjpk74cJOJrWCQ/A211IlmvUc5M8vOSzdfv1MP3vN/M+vBy+xjvxTfOBNDeL+3KMxOQgqs3+Bqy3d+JwwIztirMSnDvLjWFIE01zeeoE+u0RByoXOIggaav2y6FX98/zO8nFkmfVSXGMpAnR4J+GPK0TR7AP/61W1tJ3BXBpCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766955234; c=relaxed/simple;
	bh=YqEUG3tnXcdf5/oHPzJJqOTfDvyDZFkl/J5oIH6vvdw=;
	h=To:Subject:From:Message-Id:Date; b=GXvNEFoq6S3MA4kYtMn4fhOv8z2iOF1vDHXAvUsdByqN390znKFytD+s3Bm0+Ki54a6IEro/HkqhF1L2M0/U57kQC06lEe12YSET4vUEP3dlHteOVU23XpjrsiejWODMEOdp2RQ9WnvqRnCKDwFCHzChZ8zBLfvv9YSGTRHktIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8U8fdBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8U8fdBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6174C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766955233;
	bh=YqEUG3tnXcdf5/oHPzJJqOTfDvyDZFkl/J5oIH6vvdw=;
	h=To:Subject:From:Date:From;
	b=b8U8fdBqiM+76gzjBLDgcYwglUFlWZRbL2DUrQpczWZayKGC3qcBaWFMWoBzpTTdm
	 4tZQxHod+uqoBhziPmW8G7P4lQpt+8Bi2MnEXyRyAX1bNKDo61oWDcO2aFSEfeutOJ
	 VJ2ruvECDoVy9FyTWBmLsqY+5+LNTpkuy+dOTsZMUOVyU60Z02xDofIghj4mhxv0Gz
	 jDpptU8eEntg85AMvHPBiLn3mCYfCDzhKYUDOm1bcCwpBb6c0fXeF4c9IGrvfFkV6k
	 PqlytG0KXI238ACQwqv/Md3fMXOxZyE13AY3RhG/wgbD0ucozfDQ4NW2hZI8PlRWPA
	 mqZaGtfUjuEaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E76E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695523363.20125.7781941210644303412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea21cf5ce0307806aa3b75a55374cd5bfdb513ca0909496a946393b3a9143cb
Date: Sun, 28 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766955233
