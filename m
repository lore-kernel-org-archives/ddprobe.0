Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F39B430BA7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772321694; cv=none; b=UzKwFWGuv7N980XhXUNgBr+hlQ7Uo7iz5wa918mxvDcnR6Yh5kCDNT7gLm6XEpKX+w679LVBdfp90RVOqjqOkq5Bwk+1O5RAEUl4wlUqpmeUwqO4ihx5gCBFHITvUwaqJwDgI8ypMNi9lAST7yHpzqSwUG0EaijanMVaxv2FMCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772321694; c=relaxed/simple;
	bh=bDoLkpc7E37vAePdjo2vldpggrWXWoKiQ1nwz6mxdh4=;
	h=To:Subject:From:Message-Id:Date; b=NblIIsR69+imF5mTTu5N6aNjN7D7O44umQJvHA200HXeLgZ7dJvkgEEdkPP/o9TxZyZQeRRMD/2aA/yehG9pkBoCTQA6oVCWhbgBFHmjAiIHisGPbnxqAAgaZRlGJ+554N51mp5p+hWjuHE9nc8shWbTFRG+Qa/JVhps46V/diU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIXybM7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIXybM7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772321693;
	bh=bDoLkpc7E37vAePdjo2vldpggrWXWoKiQ1nwz6mxdh4=;
	h=To:Subject:From:Date:From;
	b=NIXybM7QCYvSXHDzXEHtCU92TvkU4e9G5P6tREvCSdrWMlMYBLAMy6y8+yEVh7FiH
	 BOFQbjFewq7yTsmKAK00n+LJWLGFlVgAJHEWLBUrhaEKCXPgY8QRMlVhzca0qNSHSZ
	 lxqpwoC2pVqYYjawcoiIyPcs3WoiMmLroyZ5g43MdELSvtc46HU1UBduF5uKdm1SH+
	 dJpr2b47XGIUdr3gQzGcSgB3qZ1mwBO2m0q1brlLfRKb4wMdJriarXbwUTHTZ+7qEm
	 qFgZgrSFzSxpquWTx1ZGhyDqcdq7YZuPruo0s0bdKX+HoRBn+P3Pv5x0cCZFpDPNEk
	 tt6hOsp/U0ulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCE7FD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232169360.7408.5586257090993484529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2580c44891ae080ef133ca32507339f83a140a9e495a80d68c15244a31d4af
Date: Sat, 28 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772321693
