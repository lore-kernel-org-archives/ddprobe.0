Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F4A79E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745726394; cv=none; b=TKR8B7B8S4WctfnDrnPvr2LsX6+C2Z+q7Ehwc3ahsvVVFR2dyPKBwLvfkB8DXwTiRWhdVtBnh94WRAC4h75uFrUQ6HRZM1BObPkHWDQYVuzYvfuvdCqFOjlslF/EJXuosB3znHUbxZXWeSEAynDHu3x1bSySNZQ7n3Qjl/pE/jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745726394; c=relaxed/simple;
	bh=1yUQBJqCv2lUafBmM2HYM+Mmk93uS0E7gWWiy5VwW6E=;
	h=To:Subject:From:Message-Id:Date; b=ZHtgqTX9fQv9UYcliktKQBsVOeZl881s6erkxnaImT5PIPBV+09PGjOfBjHzHoS3SzTv5tkkRKe0Ee4GBgGD2Y/CxHnkhChFYSRhDV0rIgyR07PYpLrmvzXflLcMycVu7ucb/LqlVm4ORmH14JJuO4iC57pXmMz2T7mX0tsSVHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJqDFHOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJqDFHOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DD5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745726393;
	bh=1yUQBJqCv2lUafBmM2HYM+Mmk93uS0E7gWWiy5VwW6E=;
	h=To:Subject:From:Date:From;
	b=VJqDFHOGIMidQyOF6m8p4slvv7YR/YiiYvi+kixzN8UOOAodDtUduk2jmS+2Pniga
	 933gxYR7HD3p0MJnU7KaFQgpys+JwBwcSWNJ7rEq8g2rXP4HCGVR++fm7Qsc9s69mr
	 b77G3nH/PU6nvhpPkXX/pauA5B1FfPjXI0OVOEPwvdNSFj85OCnvuCCppZ7zSbiirI
	 hXKP8xxzk+9pHxgD/B+PvXHhK7VbQNti3HwCfPFbn27iCzaFUaqFxtugkfX8OW6Y/t
	 dezzZc4YO5T2b743FIF8VmC9L/x7kD20EaQYsSjSH7/M92BybQt2BGoDEJlhrNRuBE
	 fxg9JPEyrni7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ECC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572639357.9080.4602144780386089113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded8b47c0deec4094f7f1cf319617ff15933014204361776e162b9c08e1f508e
Date: Sun, 27 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745726393
