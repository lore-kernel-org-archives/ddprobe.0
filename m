Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD28347A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744476596; cv=none; b=pkENJoSK1h0H344H8JBGQDCbKtOxXuvzTb+i9PCQLs0y2sskEzDOt+qbxJ10n0bdWJtqH4KXepZvzM+bRegNQMG8jfcuwewawsvBXMtHkloytKc6GlTaP4l5X60O3PuOewBfwrfGP69Fa4kmKFh2bBC03V8/khlBldxc8Wsjflo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744476596; c=relaxed/simple;
	bh=jSXoxvLSgFPMwSWjBqa96+F18/Wo9cGvXc6HpK4MGPk=;
	h=To:Subject:From:Message-Id:Date; b=cTGTGJqBD/8yiuySInqSSYfXCHW3bT9EsRZ/Ycs3r8zB1H7q6iq3TcpR3NgYYknfxA4WNeRzVVMEw3zoJibpIc8hmMkEaQ3qwiCZXt2dH89bDKg3rrXY39gXbF9g0O+nw2w1t5FBigJ+8GI11LuLTdFm79YQJF8LXf1DvdBrbL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcrlHdCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcrlHdCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744476593;
	bh=jSXoxvLSgFPMwSWjBqa96+F18/Wo9cGvXc6HpK4MGPk=;
	h=To:Subject:From:Date:From;
	b=XcrlHdCqIW6SwQlEqAJYnExQPTgvb7aoAHvhEePdR+Jl7p/L+KSiqepRnsNK7aPVZ
	 R18pObkTqUx0/pHlakBFPQRVCT3zh+ssOCWSyh6hMonSwwd91wBrQyd3oXwtSMh7I9
	 Ub2kyBzLEKVa+0FbyN6jNoZ+TB9aUZ4LVjddhmumL9PZ4rA0zZl6wjwur57Dlm/l70
	 6gEkIn1knOCNGGTB//Wf39TmrwSBcYSW4XCGLrfTQrd2rh4X8p1rILJixKrtaKiT7R
	 +IGN+2xKJMTM+tc6kiWZJG3lTvpmQM6pzG+Jb8HiDsf0q003z83+aWmimvlkZZLmXi
	 N6Yo0oUr1h/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32FCC369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447659362.18831.8506008984849355801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959a8877aa902fc76627fc4546cc2d85613f190c74265d421534a1785635e9da
Date: Sat, 12 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744476593
