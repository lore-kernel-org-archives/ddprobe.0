Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43DE3176E4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767927233; cv=none; b=LjfaLpMz29DISxRR9BFXESwQMJ7GlCrIFXR/xwIic93i+ZkOM29iMYdukDaW1YTM95yV5LHzoslcdZ0DK5gXQ637iVqcMn/ZHN6Ctpro0W/JBLyV67jWzQnTMWQzD+KxZzLai0ncrlVL5AE8pE2z26VnRNeo2RCbnPwzdxE8JkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767927233; c=relaxed/simple;
	bh=tjC/NPnNTKkNurhTl+2B3Qm8iYE1ezA+POVpChC4QNs=;
	h=To:Subject:From:Message-Id:Date; b=cYN/ff7j9Lej5ckoyVF/CPPTn1aQXyT0jmzujWxRbuif1te8aCm3SXvy6NMPrlQtAxZIwkTgl5xnGvOElwOvU1yTcv1x81bPFwi3VZtoC7D+XMAsWhXj/xaFa3HHVRmAj7YNHlaN72h+T/kbDVE8/+FA7aCJv6D4AP1F8CYeSPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4vD9irI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4vD9irI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0932C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767927233;
	bh=tjC/NPnNTKkNurhTl+2B3Qm8iYE1ezA+POVpChC4QNs=;
	h=To:Subject:From:Date:From;
	b=l4vD9irIgS+VNl9+pUDRULA0i8jRA/Cax3bveL7gYTA2KIFOk4miZ8qLwvbf4RfNc
	 4+NSh7x6V9tO3QrXVH7GiJKpuhi69Q0r053AWVDNPuFUBKeNrhUQwzWkrtBMmdvXjq
	 uNQwi2fC3aelV9WY0fITIcMB6iEh32xbXI8Z9+rkonvVJTADzG38qal/c6fEWycpM1
	 JR0xiCZUHR0iOGtRzkNpzIBvpqGLmJUYXG95Gq53lvhphoGFwwp8u+n3266Dpvk1xR
	 4atgB9Ok/p42KFv8nkiuYw+myfUwOXD4ADuo7pmO9RwUC81R4DEVvWRfhSB9pCYeoV
	 CBWX344+J9p7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EFD232CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792723357.28326.10789253350829827026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276923338f73996c36081a04c9ee47cc012deb19bf5459bab7976299f8b60064
Date: Fri, 09 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767927233
