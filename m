Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA3122DFB5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754390394; cv=none; b=ClgtXFpxF5PS/CiffCiuFo4JhmlJz5uXAOzPdngCPe9bzq8HA9nXyL+vU2FxOWJsb+xShDgYqVo95yrZ0Z3kj/Y6YMB5Wz4z72jxrStvlU7llKelZ+IiBgq2CZ0IJa28du4yRXfTUQISwQ6/KCBJ/XhKMInwa+A9lxpnFcdOZ+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754390394; c=relaxed/simple;
	bh=CpzJaKp/ohivpo6OxhxRQL8OAnVD3hikvXNdvaRCcCM=;
	h=To:Subject:From:Message-Id:Date; b=QooYvZo3m1S6Ns91mxoB+zpifUbxzGrQuU3dNa8FyNlP3n1/043x1Ky9bWlDKa4OlS5nycJE4Aes4gTMYsT/Gb+aAAK28wRYvGDnqPK0fcDOm06Eonvjrmfw10vWcCd5zYzgKBWMu40lESySiVuIFINbDsmQGPC+CYThWYp/eDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD84NZ1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD84NZ1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C148C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754390393;
	bh=CpzJaKp/ohivpo6OxhxRQL8OAnVD3hikvXNdvaRCcCM=;
	h=To:Subject:From:Date:From;
	b=LD84NZ1rAbdMT2hHWPEXzfu5XiUQOtXxp9TbpWNQ+mxHowHKgTSSR3Oqm1oTNjCji
	 1KH9YGrUwlQVHKfsZlBuNdWpOug5mqx7i7pPqeOolWFgMUl8cFeryHW3DMxHNZe0Q4
	 rqGSIXMa6nPDx4i87zoounJujn36+vAIU7WzJLRg/YxVHHOW8CS8qI8BnbxHNxHT4l
	 YJgG+pcQN77eNeU8BtFysTKNvNE1bpIpjUtniatR6zyW+GBuBe61BYnWJcINp+fAQZ
	 Tq3HCUDWPvPfeblG26NrQLrMlk2xe3tZzLnuYBfuCeRTlPRrqJzzziCqQt64jr6Cji
	 qpCLWmmFn8cLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97CC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439039357.13350.77987991727111553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755a2ae65b70ed5e9525775c13dd2b2300a58988da432e8fd6b0abfdde40b43e
Date: Tue, 05 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754390393
