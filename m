Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECDF25F79B
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744093794; cv=none; b=ACtvAQyDnt6PAWX9meXUpX49w6m83LldB0XzPNgOKQzyjGcFHEWHsD6xc/97bibJ2Mhqp7GFoo+meJ9tpPZZmMeq150O5LnTO6XeQKXUm0+P5Tb2JDTZXxevAUkvAY6sOceZtLhalkry0jlwj3KgKictV6YgLaNVw6LYr3uNe1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744093794; c=relaxed/simple;
	bh=FLVNpxcfS0o4iP56IjAOJ7ZrAVV/Top/grbaG4q0M28=;
	h=To:Subject:From:Message-Id:Date; b=ArG0PtNL8vWZpzie12AddmX5Z+MoZz0QIgYPnV9OriQQO44t3/LvWnhMk9+ConCSccbx9BYCzoAM2yCATGTBHogjl1qw9TktMYOxONQ2l8zxycVlMJUa0YRhQPapl3k5AWffKb2QAxNmJLWNwDoyzVVqVpvnOQvIbj7fEbSXLrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUwHyxOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUwHyxOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA1CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744093793;
	bh=FLVNpxcfS0o4iP56IjAOJ7ZrAVV/Top/grbaG4q0M28=;
	h=To:Subject:From:Date:From;
	b=jUwHyxOw5hhAYWNnGCgzFnvd/dUjV0NskRTFmN6ajh2G+wn6lUvXGCHkPOas/7fL4
	 Gt3iPoKqMo7m/Dh4WvdctAvkDdym4tsVbXWl5lEJebS37KNbvI5euyHDrsJg88qKSf
	 xuykeGBwLxrYes+apgy708/1V5FcBqOk9TTsxo5RVAdOX/2OpuCNYGvvtdr8revOqd
	 E52CavSB+UOZA2lwAxpSEoZtCQ6jnGQnRNhgxJDeSdOB9PAFOELyDKTu33TE1cuSVa
	 Jm80rrxqtvWt9cHDq1VX7nWHMuqeb4pDOi7YTNfAIRNdmaijr6/7/He7jNaJ4lNnS3
	 H2kXrvim7b6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E57C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409379361.2666.5148050251588547670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136c25a88d7a77a130df23cedea2da02aa6c54b278813778ab3a18491bc19a1d
Date: Tue, 08 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744093793
