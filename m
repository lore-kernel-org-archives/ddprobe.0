Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54596B640
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740271134; cv=none; b=drXogBXL1vt6HYN5iWF5TOYJYSgymtHe36qS6+Ml71HRopPcsMu7/1RhPOSC2SJlJtlhapMyf/rFqZMy/8IToW3ZcIlIC/zr3hzGR70vdGE1eX5UHJfQVJKAG/LR+jcYK+vQrRNuvEAfO7BsnXDEb3kY6Y6H24eUZEqGWfxvSO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740271134; c=relaxed/simple;
	bh=L4JGu1CDPwvHq0n+ildiIcJMYskNv0I9Gt4Rf0Qj9n4=;
	h=To:Subject:From:Message-Id:Date; b=aoe0lVGoFCBEr0J5fyar3QbSyYjfFNp4To4QQBqTQT4w4UQhSRPeV5AvwyXSAHYQPrr3OlBZ7BH3gnO42goKZfNEqPBZ6KlinFR/C872Pjd6mA7G5g7pIb/JoPCbSY1KYtrfQrKv0++++RV4IWckAl5nZeCWP4lcni9G7EXiFUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkVFqmPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkVFqmPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10CEC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740271133;
	bh=L4JGu1CDPwvHq0n+ildiIcJMYskNv0I9Gt4Rf0Qj9n4=;
	h=To:Subject:From:Date:From;
	b=fkVFqmPKaPvekkYLIdcBt8kNjH/W4PssOkrwDIsW1PmLH+i7ie3TJV2xa0P6AnT81
	 N7TqhZcUw8gwYM2K2YF3hqU+Lis2Cq/U2g5/bd9eLFeTaiHLIfFlIjTMT0X339YVT1
	 xibtPgQnsX8+L7scurSy4BTSxPLOL/E7YEDd0fjnT0vQV+r38A6nQG9u5xYV4Sl2DL
	 ollq/BgmKItrIZ1qoViTDROT2sqCqS93lHeaV5wrz2qljh1IwV5w0cGRasuy4qfpFH
	 V0X27G/Uv+JQJST1jUbw4a4KngpjjSuO6eqLY245k7Ly4H3wqso8y+TSfPKaSI0w4T
	 uz1rG3PR0n3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E21C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174027113360.17051.8498134751916824978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ec929a413c23de6625423103b7c147370ba5ae789ba80c533f203712c12440
Date: Sun, 23 Feb 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740271133
