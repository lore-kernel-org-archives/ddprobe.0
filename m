Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9531F1517
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753671594; cv=none; b=tI5nCtvoOCz/YGvbUwd3sVuJzDvE1vXTf2Tg5Vi6BSraBT84CXEVs7Wy+XR3EYQylrz/AR2b0hOibw6qDtDf8J7PGf65LUzbKdqD2Qf6EXBvYJYOcCHmTx5upwU8ovkpTGBSMvjL2ukJ01GUbMxE1f0Bx8MfLBWL2ePpkbFon2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753671594; c=relaxed/simple;
	bh=UnzywODnc9eyHFH2LDT/isqD5iOxVAYZ+5Kh12chYoY=;
	h=To:Subject:From:Message-Id:Date; b=OfTpGPJswMD/V1v2xaM3wBwz4JZXXASd9TFb9GkbeTJO/fIMNVbc4djYpTGu3F6tY8zf0bH14RX5PQdZzkD2IPfqCP+4puBcrvpR4Zm9cp3Wsh58T64M0qiTWQiFkcZE9HQnmTvuOfG6WTY3a7+YBSj6x+OQNStJgBYaCqU/pkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4yqc2eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4yqc2eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08FBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753671593;
	bh=UnzywODnc9eyHFH2LDT/isqD5iOxVAYZ+5Kh12chYoY=;
	h=To:Subject:From:Date:From;
	b=a4yqc2eH4xK8eI5FUY8GUjaTmXS1800pI51DciCKf338Hz9IgVT3w7eoju/09Fk7V
	 batdXjk2KEy7tO6GywJ0kGomU8BSNT/nf2TKKJDP2wbSmTRncbu7AXFxGrIJPbSAzZ
	 NJ9ujbQdW5TnU78gTX5wjsGNCcWklkawI1OarTFUcDO7IXWaJivWCswr+/7d+I8VE0
	 ZzkbXdnNApfhxWaLo99t/6F/IAPhg+p8y3JRjKRIwPSP31TvB6+KW50lf0bTWRLL8M
	 iOErjMxbDbOOwnJ9qvZcWHoG7tbGm6dkc4KUrhuRzHu8jJP5htdHi3g0zCZVT4xFyh
	 I92TxQMET+44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F168C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367159357.16645.452558967697104481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcb01c0b4e17574635219239836212ae03b6e16509d475929d564350605d769
Date: Mon, 28 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753671593
