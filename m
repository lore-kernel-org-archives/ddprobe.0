Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B4342CB8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771670694; cv=none; b=chNuwOmkrcuBN38hQNtivMN/sY+OuoC1XYzh+/XvGV0UXMUQSaPKREynSzHrGLYRRClcy+jRm3+4C31DQhF3h5uwbe9Xl/MCneJaJrvjpMFUSq87qEA4KCX9L1LLGgTkaFZAvBrJwYtODx9QDk3I4mmmcgMksPl1k9fs+BmJBDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771670694; c=relaxed/simple;
	bh=Gw01KgEBG2XKw4GgFqRXGJpBPGZXIaZ7Qr9KOAfx6j8=;
	h=To:Subject:From:Message-Id:Date; b=RnjUVf4wR6uU2xelz4VOpgGE1RnDxIvpGKAHHwgmKneVOS3dP8XShMGyJnw7GQ8Keg1Fh1TFSDJ8Zl2u3YgoSHRpLLuUZ1IBcyFUz87flHmmZeAWeNaQIPa8c1dwmLpsmFU8UX8Xd/9l6/ON/j9UYL/jgW/aPdC1THlfPKiTFYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0fTbgot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0fTbgot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A00C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771670693;
	bh=Gw01KgEBG2XKw4GgFqRXGJpBPGZXIaZ7Qr9KOAfx6j8=;
	h=To:Subject:From:Date:From;
	b=j0fTbgot4jTOm2l+R+veXWUNXKluOW5GB3/xuG11Ph3Pc6ngMCOdwK/0JNSWd8apg
	 5XR7YRTYuC3IX223mPP8UtXmYyvOmKtCiny1vKv4fgXpxjg1OYAufk5YB5bBnYBVE/
	 ZfjqFGma2wd2CzJ01sV55B5jKb4bdhw8Vryq+TPGHsUUPJarcUicMxRKWanJ8GPVyu
	 RLkQjeYRDZHS69QZh4JtpKwLTTD65N7riGBNRe13+RPye4HDrdmNOJWaQcpJIEfBWS
	 eYA7Ph/l88Uy0GN6uAvgNDj4vCe8u29jXgi3Tn4Od4qrq5YAnf15G90A03ARdCCSma
	 NSYQTffmaHM4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97006C61DE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167069360.6908.4381958431978726674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feea38db797dbdc163fc77b80c7736b7d0ebefd008c12187ef64a9e65ff2f595
Date: Sat, 21 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771670693
