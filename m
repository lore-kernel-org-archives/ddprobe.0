Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7FA4F8B5
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707586097; cv=none; b=aI2bBswfnxoJiOi9Jy9EN2PQuQInGenLBCkFKuMBo3MKErWtHuaecVirf8NZDWH+yIHbbum59a4x6HExcrVF17qL4aHzmljfXzH8baiqp4Zy7uAbMIaKMZCntjrHsfpUrwOs9zgcgkfqQu9XQfaQPQG37ClpSdDzDylaKUOHNlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707586097; c=relaxed/simple;
	bh=vnBYO5ve9agQhoqWvlmb5KlGAKMhQyxpO67TwmMLUpk=;
	h=To:Subject:From:Message-Id:Date; b=GCOlfjSQc8M0RtlyK2LIWOumfLo3KAwAJ+YwKLprZaZocJ+EYYOG1jcCqtXTAxzKc/F+WYyYpW1EhvJa7KR8tsjurmvPtbLvPebUKxisbIjOL4C9utrFJvYvamiNDWiueSLvvxPR3bETGI4wJ43YZDTWffUOaKsGWY8mD2gHhkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Livnyrm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Livnyrm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E44C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707586096;
	bh=vnBYO5ve9agQhoqWvlmb5KlGAKMhQyxpO67TwmMLUpk=;
	h=To:Subject:From:Date:From;
	b=Livnyrm6n69Oq3Z6+rT2kqb8wy280FXihoLshaC5menFBWNe5JNfCS15xWFHOtZLl
	 SjMxSlv9IvwTO09NhqOSS9m2xCSY7yOJIKKZN4R4/ygwOd6e9DRpue6yzFEvm3Y6wO
	 WxyQdUhY4XcfhRQU9/h6Sd/Yx1J6tiI4mYQZIocpgXSwkNM9X74yQdziSIIW2aHpFW
	 KHbyREJJ3Xm9o3Ci6RXQIbxKtLohvHtmRjitybNhAnS3JWyxRF8QwX9qd42MAneHSD
	 RcWUKlJkBuNtAOrxvMiKr07CyuppaD5NXT9Nj/TxXZQyHDGyCam/KSLet2KE1BL/OO
	 hMrB8l/8kFE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63802C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758609637.19609.8054050521651828111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f015a87b01b7bc4d1b7bec35f5f0e4f8dcbba9bed151c1d1c53be414d79ceffc
Date: Sat, 10 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707586096
