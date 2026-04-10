Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAAA3E274A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775844454; cv=none; b=Rlf8MH0aZPOkuI0wEdCz6hQWpktGlPLuJs0HIn07hj1mokeF/xry88JnQ3GC+/P40f+UAHs1NkYP4L2OCQYVnFQShqqatc54NbgwY1mj69QGOlz9s4uzJvBW8vNJjMPRt/KPxA3z6JRZtP4T3vNr3oYDx9F4mWH4wpLDbaUJZ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775844454; c=relaxed/simple;
	bh=J3AZHKOALeuROjfuOz/N8qUo6gG6EY4vgM6BOtDiIwA=;
	h=To:Subject:From:Message-Id:Date; b=ukoa2zSQr1bXc4rKB/i0OR7J5u5anoULeNfqKno4e8AWkNwevEe7CIN3ZwvAlT00M7lb9uQv8HRAPCiiFuuuamMZrZYqunrSK9Ao+nUlVw0KtbIQWhWQoNnR9Gtl2kx/yK1zgNaIbGgtWuoeCwBHGnI5PzcHE3fBBSodcjnz/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQqrOf0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQqrOf0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DB9C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775844453;
	bh=J3AZHKOALeuROjfuOz/N8qUo6gG6EY4vgM6BOtDiIwA=;
	h=To:Subject:From:Date:From;
	b=KQqrOf0KSCwPSzs5ibigSAzH5q/X+fHOpizcyVbTqVVJs60TtfCThAiyOj4OqEwxB
	 HdptC8NY96lvfB2dYElMly3aHxvm1mZC8/DsJBwURJOSMUCnKqPBAAeaY2w64UqAKa
	 CnS1KYnegfJtsxt57qZcng702RPLVqobCVdrRdKo3kBh+vMDnQS/44puPfE4Txszjz
	 fMwJCmY3BymMyioA/pwdzJHZMxPPSIJXXYD4kJp24H4hKoLl/waBKAAQqB8wLBDrZi
	 e9VuCWi+d3GhCGG031I4ZLcknW9niTNV+T5d9bjNwMzq1VhmJr3GwAJCmOIK+K+7vo
	 snFSxsAX42Rfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AE4F459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584445368.28670.11049837765768975836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d4d55092714871e599c65008b7d5c6af61d5f66cb3ef615ad1f84814aa12d0
Date: Fri, 10 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775844453
