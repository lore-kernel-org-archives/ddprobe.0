Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465771B78F3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778131654; cv=none; b=gyU+FGoaVan88WepxpQzoVjTjrJ4lKWBgn92MPA7Mlt/7WaraG91RUz9UGTPr4JKLhJYKB6Bf9zbFHPRkKmgGeyiOagqAsrfK4UWGbKdFhYVsMCLRKA2RHN1O+kEvoRqQY7cyahuOgEXH6auKsJSDwPZc6H6OgV5IowZGgpz2pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778131654; c=relaxed/simple;
	bh=B43s3NDOw4g8QzwjrYI+OUH54V9koYrb16W5lKxaIiI=;
	h=To:Subject:From:Message-Id:Date; b=dY3eqzxUsl2IsfT/iwIaMwNfHFrz20fFjGUxZyryMiiGbw2q4hDEJVZmQAzg9Z3B46jm8Bu41YjkOiozvj5EjtJUmDdZoB/0CZZ+R4dVAyD5I9mpIYGZI30+yIq8+3+zZreqhRuQNCMGgfkqz6o5ugyoL2gCo8Ii88JUpHLhCRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy9eSSFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy9eSSFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B72C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778131653;
	bh=B43s3NDOw4g8QzwjrYI+OUH54V9koYrb16W5lKxaIiI=;
	h=To:Subject:From:Date:From;
	b=Hy9eSSFWOFmZEzNt68rdcdrVxYE9v9wBPU1Qq6Xhpzs5eROu/JJYveSrTemGedBk/
	 yug/mp5Drf4GaV9Vmg0LhsSB/ufqBzMDpCULFx3i2oKlHZ2P0ZdZoQbbFVyhEcGSDo
	 N70PF5TTLU2VUGUXKCULcc17w4JLZZbNftUKz51Fn59s8B0TwaNwYFxqc3CzGaa59W
	 JOniHhWDNAbzUFRLdenfUHe3pfwDvIHVOwAC7oLeBCuEAuZRruaVQc588yyWoOj+DD
	 XrNFWVFz1L8nPfYGjmLslOK4l4hRub+W0aPzFnqCfvMttUgtGcGkFA/q2Cr9uRC49j
	 wpVVqsDe2xZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B187ACD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813165369.10152.894325504555837343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5cf6f56a5fd8390e35a4dc36fc559f901dde35ca6ce27c45310882e29bc454
Date: Thu, 07 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778131653
