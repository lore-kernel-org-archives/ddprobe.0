Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E4117625C
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734512754; cv=none; b=huwdwDCVKleffaglmjnpdLywSfpAD6mI3sVyNJi6472kKuERVCRFsD24FQGSqdsodNXTQ2lIdt5Gz2IpXD2q+dILS7a0CBpa/0qpZ7hdHPY0rsWjc//Xm0BGT3/bV1K3/BwLt98RyX2cXPo8CALRBpNEtFLehhVmjKoPV/+Xi80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734512754; c=relaxed/simple;
	bh=F0IY4aMlhrMqbupqpv2++mo3+vBvm+AkR/CRl6TNDIo=;
	h=To:Subject:From:Message-Id:Date; b=AZpO1r1jGgGNZRSVp5A+Zh1xG9FZzUNALrn3rvL6jpdzET0GqcA7y5OC6dzU8myLjhGAeWLOldAkglvIOiynNMax641JOF5qzhx7mvEOEqJiADbfBAKPH9MKIA5YyW2egYXALLcvoQp7sfQTn2rXqGUN2mcrLqRjxVAn1E4zx0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7mxQYfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7mxQYfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05F3C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734512753;
	bh=F0IY4aMlhrMqbupqpv2++mo3+vBvm+AkR/CRl6TNDIo=;
	h=To:Subject:From:Date:From;
	b=A7mxQYfXiXoNGIxF5DJVkdwWJIPteS0SbJveiT8S8fDtL8wUnDtCyl/XISiWQ/5zB
	 sNy+jOO0aQDPEgt/ix4xl10YjsXU+Qk4FiQbdSmbCab1Qn/Kqn06FYnonY3Rn+lDrX
	 Yv1zaQvNqM03LQ7bfyWTVO4qh/27pSUzVBj+ozIHZMRtu7AHA0x7y7j+5//+hElx/l
	 2wq8quVnPvrvBejQj+eo5uYlWjNVXmq9jv7wAwpyfoPfoHIFCmyXcV5P3x4wKsRloZ
	 UjsYrtTJMKNMDDpdsXkwok5tNk8d0zZfMJBnwZqviXX6iWel9fsez5XJr5nP06mg+4
	 LagRGmyu3XuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C2E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451275363.30531.255520661537422331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872288c7a9abf3c1327f9e1fb77a27ccb5922144ad4636223fe51fc648cbcb09
Date: Wed, 18 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734512753
