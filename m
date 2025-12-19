Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ACE3A1E60
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766185434; cv=none; b=dTYoUzjgCe0uniSOtq8jGaVQp12VpN9zjNOGP0lQnQ5VQuwatZUMANuOZLlqDI/cyoW1NzMgSVZlttaevojCM1a6LyHPgj+DEuiuf8TXxaGWM4YAJFarK5S70p4S/l58BE1JxzUSTa40j054cxj96OAp/p/cdKHuj8XZHs1K2jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766185434; c=relaxed/simple;
	bh=LW7G78y142JiqWvTlTYJ6Xav1qwpxODkanLlRG87Lz4=;
	h=To:Subject:From:Message-Id:Date; b=l8Jfq+tY9EpH1R9Wwf+qpVRSEdKIvsGR7YDJln7R4UyNI1JIjDR0kenc2pe9+reaisMhc2ZvJQccTn47OKhN2D6t+Vk6DNQ2dwpT5QWclrp14AntFZ8h+qWXhtVOGuDtZWSGoaPvfAlFKAejlD1YeP6AtUFuy+vGwwx906JrITI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ6lIu9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ6lIu9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E7BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766185433;
	bh=LW7G78y142JiqWvTlTYJ6Xav1qwpxODkanLlRG87Lz4=;
	h=To:Subject:From:Date:From;
	b=MZ6lIu9QIhg5yhBEAc/VVtovKjcHijC8lq2zE0iVRwzb2k7xwLwXapGQ2A5Tv6joo
	 hVG5Wk5/YFkAZpsFSC/OfsApMGdJDiZxDISPRUp+mxYo8WwE12yn1VmlEJ/NTDMDve
	 QBbrwAwM397wgO8zR4Vez5yb9s1AhmvPl1JUNeY0s9BfVR8pJL5NKijEjGeTLtleSr
	 uwVKWHJUvelXSXMuWuh1kJ/1oOM49mRYfjO7xdAmsOKFWKCfGKRhH2LIl0xMqF2gZV
	 v0cYLpoKCP+MgcBIn7B1yTJVXI5K1PYl5RKHbpgKBbsF0UTp5FTHSzl0udWsJyJkqw
	 8d0F+KUmisU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0FE668A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618543358.25337.6153128495040727056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283a62230b4c16c8b991ea734a2f27b439a102af26187684bd645e116fac5000
Date: Fri, 19 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766185433
