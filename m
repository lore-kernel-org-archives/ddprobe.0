Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D0B4C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717855643; cv=none; b=upeCNPqpX8P3vywH+2+np2VLpl8cVT/zcHX78y5wEEHV7fyoL+hl5W9U+4BqxP7AhAAvQBDibDjBGX0rd7nmmxsUb0dwjo0xINsSXjIFaVB8vfPGrqQSFRIrwvZxKe51wRWN0aJY26ONaDpy+Q8sKZuvZLkoAUOIeEkI5CJ5dtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717855643; c=relaxed/simple;
	bh=+UnXQLJCFj4WxUK8bYkML/KtfL6bQRH7Pv7GxgcZBAU=;
	h=To:Subject:From:Message-Id:Date; b=liMb1gG++r0/l2kuQiWM9wqQ0mK5eCkn2TMolmMZX3ktB/4UXTiuDbvQK82pt9XMERpgy3kD6T59bIlGx59+5+nF/JSj966Wzob4FliMtC9o+Opx80a9c7oRjDIjsLacpZZiYygELF9LEzKQ1CA85wdMaX4UjseGxqeeaxmtkqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0NvZOdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0NvZOdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18B5C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717855642;
	bh=+UnXQLJCFj4WxUK8bYkML/KtfL6bQRH7Pv7GxgcZBAU=;
	h=To:Subject:From:Date:From;
	b=U0NvZOdyDg75jZMGUCXzCfmVFzhFNT+k/7TU/aMIIsnbjyyr4wrFhtDjNv6TNgusg
	 HL+KV9X0LocZOpuPOQrWQPYEzI/bN/eO0JHXdX/Ezd4L3tuDci/i2UZRLbqaT2CmT9
	 cF7CfFW4BIfBLYBtneAkBczvPwsiGWJdpwvZK9EiqgLVLNazH0ybUgqqBOXobLYZsF
	 L4idoIN6uRc3bJDxo3wthNtzup30b2IQ0vWdAaeG8hkD1uTofknQezzBsI7K9ff9dW
	 sdlEJviZqcaYrYukdlbL2Fef+6ls2lamh6b3KnOhTF1X8sdkdZ7ElbeId9EKNpQuHW
	 LsurXpBqVRYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C1CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785564278.3186.17804462979297262292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec36e60fbfc562a83771d93258988b3e8fd277dcee2a07fad284f8cfb341f54d
Date: Sat, 08 Jun 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717855642
