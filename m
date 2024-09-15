Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CEE17BA7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726424754; cv=none; b=ZdrsO+DzA8pIUZg77edamgxo02zYsEwDCFNwSwaq8g5weEHGt6vOhkrX3TSFiVAEsw9QDzuGYuRxgEy2JxoNj3QITXYTXzasM7YGPGojuKWaHkgecPlJgUbNeKBcpIAO6JjzxVN/JcmRFxME+EwYNNaDwEzb/QXMgbUE/t5Idyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726424754; c=relaxed/simple;
	bh=YWY5SsRxayG/hSqUWol5zSTR0A6NQI540v/6p4Hq0RA=;
	h=To:Subject:From:Message-Id:Date; b=OBsZR9/dbeOSw9/7Yb6qiLHEt8Lp7S4Nmm5NGkciRFRoIRDWtsAw0O57fVoKYdQ6LG+Ja1Emuy3JFi3YuzEsoyW0fJi16LS+uvgyGnLiZZAuPLjUIYDl+5zNEBTjh9lwfKHFM8IfL2E2nchN1JsrSeQXq3arFE6WMFgp6XH29yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1N9W4SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1N9W4SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBCAC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726424753;
	bh=YWY5SsRxayG/hSqUWol5zSTR0A6NQI540v/6p4Hq0RA=;
	h=To:Subject:From:Date:From;
	b=q1N9W4SUAwV+BDWft6sz5dHWlhpH19CU8td2qtw0uYHCatG26KQ4B0JD0FaKzMabJ
	 oTO8KWNH8/CBqwqjGWouRlt27IPUElsIHV+Yf0MLvzYbbgIWdxQFu+vx5Z5SfqADss
	 Q1ZJyUjYPLGgTkS/tLtuqSo2QZNzz0Lv2gTUDnRxvtRA4JDoAaepwTabe5T9QuVwxT
	 c83rMffB+asmSwLaRev73ydUB1pwHsPdeb58IOdzAn6Rx91v2totAZjZ67AesfvLio
	 vy2Ww/AMm0ZLn5BexFmoRMylAE1K1iMh9BNEDHgAFbTbi1f4UAIzuQEf92BO8urdp2
	 cJUaQG7qg+SKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A3C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642475358.19725.11790914241836727052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87152adc7ec78601431df457ab97994a2c3270ac4360c7166fac230e65d4240c
Date: Sun, 15 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726424753
