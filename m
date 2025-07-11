Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C253F2EF664
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752251393; cv=none; b=IaL05lsxsoXlFGE8NQG4Iw6Tz86wr/vNM0wq9mFJ4pnfGZWBNWvzaA28kzfbxPdiEEkYRCkzRmyY6uzNYPJn2b0da0x0W8XKoK89ZsbJZzccMMQYTlDQDHZ35sCP9iscEJX6jAPtGU7k/skL8jNaockUIEfSK3vSabv50s7awIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752251393; c=relaxed/simple;
	bh=/+x1XHw28bOnFeR7NS8N0ScwZayktqhgQq7zPjtVPNw=;
	h=To:Subject:From:Message-Id:Date; b=HzTRienSBpMPMxavbtt6ZBBkJL3yHXiZyfUZcbLuu6hGoCwm0z7tRBazEkXHDJEHUhLmm6NP+NEF18HyoLJpO5eAvPW+nVJNcxUGLCuL4dJuMH/F7alXl2Jbd7Uuz+fpnOW6eiTXCE5CKEEhCBxYzuwoj+tL7+/0zZbcKBf/XD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgOE+wXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgOE+wXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5362C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752251393;
	bh=/+x1XHw28bOnFeR7NS8N0ScwZayktqhgQq7zPjtVPNw=;
	h=To:Subject:From:Date:From;
	b=CgOE+wXNEhKCuvPw5MX3UGED7tiUewAGJpGAEUkBxHH38bwP1PIRaLmC0ImxYN32C
	 jE7aZaf6itE2aCzOftZYZVxbGvDeJoQfFR32hec6ZhpgDi887VsGUQHxjHAVxZQ4Ta
	 lj8xJnopf3MOJ3AFjNCyEF8AM3BT14sM2tGopOJ8KjDVBSOYIznDmuqemiviWounKm
	 1bactuShzFcf5s2lZ+acuNZjOrq8cbU7sh5l3laSYbVHFWqx0DIZ2ikrr1yHme8i9A
	 F2OQHhxRjOGdkT7QH66llvKpg+sGEl+IvO5NjFI/yQiq935Kxir3g7JeuX5J/C3H9j
	 ysptavT9HkD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DF7C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225139359.8649.13905048469978335469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0020a1996438efb6962bfc443573cc7fb97095f7585804416c4aa3b96e0acae8
Date: Fri, 11 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752251393
