Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AC114B836
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708631297; cv=none; b=L7nOQk6mbbpFl8d3NuExdlPBSWezxgCwewU46KAAHDRO+YuYk2LqbBgmK6dbUtISe5SMKaowZ0M33RvwwKd+52KOXbpd/iuSNiqbycRrS4iNjVjh3Ra/0jGqEJpRF72tF4PYfWSWJ26YcgQtmb7TuBSMPiuGW0twDl5NLrcS1SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708631297; c=relaxed/simple;
	bh=S/jx+X6ABgJ64TbmMVDrD9VEYqftBTObJhYbkAC/Cyc=;
	h=To:Subject:From:Message-Id:Date; b=Boz3/Qbg8N7bUsfkfpT8BinmswVqcxRckqOuVSOTJmcAja4Pob15Ctl95iu5d+3Dcl6N4Dsf3GVxB8ysPqoAIutoKMEJk5W+QPi+jvRYvyeIKs4n4+6Re/bhzFh9MpbVNAKxapS69j6ttFDRi6bidTQyw+87Q/LXHSNBXaAP2/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpBPy2Dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpBPy2Dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E603C43394
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708631296;
	bh=S/jx+X6ABgJ64TbmMVDrD9VEYqftBTObJhYbkAC/Cyc=;
	h=To:Subject:From:Date:From;
	b=qpBPy2DpXjCbCxJQhlg5KNvNf6iGrw3ukqshVeSH3DFgQ4R/zlHrMSybfATFn4eYR
	 fcTZpbgbmySzIJO+4Y/0CS6X28z2cX36pldHz+D2q4ycxORtmMNcgFXnIJfGDwtL8W
	 ehkxYy3G7Hcwl19Ey5EiQgQlyHJtBL1mQo26X40BVSdBx2yAYfd+x+9SxOd/d3wKMI
	 du1YyPj1314/nkg4Oq4GAp7JWHM1+Dxm9VU7XAaYuJ8zCUShiHZCx/dgq1uG92VDmz
	 8tcUhveOrjxwh0u0AQKH9iN6QZybPAEzhlk3ty+4nM9PBmfga5qPRT732R9bvoJOBa
	 V9XlKhuB1YcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE55C54791
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170863129638.28350.8268214678677539597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697057ed9997335dc029c303c9aac8d571db8bf0afdb1b0c75c4d73977a63698
Date: Thu, 22 Feb 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708631296
