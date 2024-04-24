Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C3416D4CA
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713997283; cv=none; b=DeLHN1VeByvW7Yx+1rQrB7T2Mt+eeVptLHKACl/7kv85n1oUX0USNsy+d2cIZGor1UgiiESZaUy1HZY5XQaQIYBZOhznka90Ow+STzXFVqq/2J3uQ0jSFqGNnwM3yhNNY05tMIHwmNNNa5O8Fh0llfgbnrK+CrLh4N9vTHBDND8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713997283; c=relaxed/simple;
	bh=/eicmEiYZKRhWNb/k9IuX5/rLk0U4Yf3NAoEK3ji0Vs=;
	h=To:Subject:From:Message-Id:Date; b=ctCNRwj+zmoiIb8/CN23scW/ET5cWTW5JtM2NTTQ5LunJ35i5DV0g8Hq/5hbu3f3pTR5Rzuv3s1SoYXiT5l575pMEe2dPSsO1oPD8D13aHE90pPbyq5+ClnW8To0qqSEhX3eimEFFFg8/DL38XCZEkngsnFW1Lda100rzQpLdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9KiT6Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9KiT6Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD784C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713997282;
	bh=/eicmEiYZKRhWNb/k9IuX5/rLk0U4Yf3NAoEK3ji0Vs=;
	h=To:Subject:From:Date:From;
	b=A9KiT6Msq5KX0aCvmble0l/VZFdWEkHQgVpz/9AVbdLnQ7+rO85BsbkLYYgMqhTnM
	 RN6uVzLEcbUXO3y7UI9liy7r/ZgbkmrLcnxQ/ycCeHAE7+G+Fdnb28i9/Rid1W280w
	 wDFhUcFAFDmabAvCvpHFJ8cmm5DMqAqBV8Z7dByydTr0bgB+CACpJ3C8ewxUxRUjbj
	 0S//8mUZb3HebB9Fk/YXLrSGl8/VWEyZvsK3Iu7QDiAJQobMqDBjxHuNXc/uWlE/FM
	 1ES+l2zlrdf7VAut3qt+EYtmR0taeM8j5SXLTnICp2/ZT0xLyNBOrZRirszPfcC0j7
	 qwilf9e5jDvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7057C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399728279.9251.9067349377513928819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9ef35a813b057b366abcc2765d994b980dbdbcb799d17daad3693d566b6237
Date: Wed, 24 Apr 2024 22:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713997282
