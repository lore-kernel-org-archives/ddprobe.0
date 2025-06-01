Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7A3184E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748739594; cv=none; b=SBaiVh31Fz18c6mVw9pplDUFSdVJPtdf02zzCkYA3JIa7rJC1tJWExTZCOVvf1QIk2GNfOjZBTnsdcTi/Knl9aWiGhGUeH4CROYpyPDx2/Dxbh7UU5vDgssOk6vC9jxtetaeVnT46MFmDM1SB5+pvH+K2Ye+gajp92xrx8U5X1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748739594; c=relaxed/simple;
	bh=56rEX5C0JpOusz6hVYRzq872+kENUgGyo5wUkCteTu4=;
	h=To:Subject:From:Message-Id:Date; b=f/ecRPoCGBiWV8d/QAsbZZn7zoQuCHxGJXbNG43TkRih61BlxH9SIiMbfEK7v4MuN0bTsaGoyRyIT8HvXpUUkKmNncNBUoJBt9nQIiP6iCQayCQoKODwWX8rAkStl2PRDL+xyc1mNXx/i7LWfjDToufBKDiMfgAmK/s3Lkgenwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoRZg187; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoRZg187"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748739593;
	bh=56rEX5C0JpOusz6hVYRzq872+kENUgGyo5wUkCteTu4=;
	h=To:Subject:From:Date:From;
	b=eoRZg187S5ySLBW9gsj9VqUOcI/RTVx0T5QKlnpv/h+N56GjvVWWqzuKU0/b4XCPR
	 UMHzAC/BKwj9YS/RniZc9wroxPbeVye2N1IkA06Fxb8OOyognQ5kNB9yzdZ00mrjnc
	 WAYqMlpXzA7NkMAa+XzF3RmWZ5Rqef6+/oK602cgTPE95wXBB11sFEH7XB4rlFzkMt
	 Vgt5pItW9yL2WTSABkGdMvv3zQuVVD8AvzyiF9NwoUAFlLMuo14u42rGVPg9PtYRbn
	 HJb+B/AyeqXD+KhjZ7P32eLyNtVkQFsUAvkzJsvHfFtaLHd7dTapjiwMjgPAXppl/2
	 jaJSfaz+Rg3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED48C5B552
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873959357.32550.15780355741730165023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef543d2ae639abde5fcd7ec386ee1c8c85c3305368730f90d141267fe744fa35
Date: Sun, 01 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748739593
