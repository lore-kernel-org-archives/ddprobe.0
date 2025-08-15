Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3DF2BEC2A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755250794; cv=none; b=oXXJplZbL3Bv8aTPAbzKzKUD9VJs7z9/1xzUkA5WjT7c032qWDuiKl/Ur7cRee/8kQWXUwzDMd0X6Xj2gQts4S8wWlH4MoxNwjXreHLTVmO21QZBRrXcM54CHSHlO+4h9FN2AtsBbhyBMJ3fTW4QI4bwBgVaFaL7KL1kRN0d2AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755250794; c=relaxed/simple;
	bh=cp7D5lWxyeQ6LcLOztlegFk2LYv6DQceNvnYMZCNua4=;
	h=To:Subject:From:Message-Id:Date; b=CxvDGDTVI7AcfAPpBCGmpRUaNTcm7DXEy/epoKqCfGAJ7UIpl7xJjmAcuiscpArdxBVhHWk1tbVTYE+dA/HwgjWeh8ypPrFbcShrsOVlMY7zhJTwreVvzNhHOa9VLgPfUHgYBsRIuaLTkuDmMYJnchUDYrM2jy5PHp7XvPtmifU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fShtKocU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fShtKocU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E799C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755250793;
	bh=cp7D5lWxyeQ6LcLOztlegFk2LYv6DQceNvnYMZCNua4=;
	h=To:Subject:From:Date:From;
	b=fShtKocUqnuJ3dpFbnrkLaZtznLBjG8ja4fIUXsx3+ZCvmM7HOU+Usq150Ko7zJfA
	 ZUh53k5t6YEpyTCnSunhX6zP6pL4NUKT/RNaFpfehIKmmAnJ0AaNnuDjlfjm5MAFT+
	 b0MuXXypwvJeY/PhtYGO/Ssqc1pUWSxUtlCysMvMMyy8bCrQb3zgPfxCLa/sQTcCSS
	 Ssq3MwkyulFk3BPEycSPZlDDKHhiTRsi4IFlR+CrHzGxHcQODKA3h8WbhbJYWFlbJe
	 aK9y7eERhK4f1nvH0qg4UChVvU8AyyaxsCqQg38s51W6prVNi2r+emci1Hr5aQYd6Q
	 pUcNdfnmnnzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF04CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525079357.17044.12250331538673898967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc9860ae0d75d67853dfc593b3121714e755d61072799044fdf7004ebeafe57
Date: Fri, 15 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755250793
