Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9842253E0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826754; cv=none; b=HHT6fqMGo7enqvJZkFyP0NxzEFk9FYAbQABmt0/f72ExXze3KaUY7tnb/WCJW01rlEYih4XcWKj9jJ08xPK6LOwsdE+jgxgB6mcIvKpEbwF8UIq3fc9BYKzH/6u/6Bp6knRi6QKIqOwOhp6eWYLwhL5VR05qxkGxoKM7nsEvNyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826754; c=relaxed/simple;
	bh=46opFxq4Cxv7hNlViWORRuaur60x+HbBCKE5ExD/8sg=;
	h=To:Subject:From:Message-Id:Date; b=QUT6zruw95qi6VEhgfgv4iotm7sFQrhr0DKcV6ToS2QKi+mqaFMnyxMAzHWa0IcTNuWa/sBKE1Bs/jWJHz0Jbji7CZ8Kpu4BRMh1/pnkIPWEX46CVG+1FPLWM9AkyVDCKxwgDsilhol0PqqfX8/fKgjro3u8PrJtOAQgPzBfWwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5+Qka8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5+Qka8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3290C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738826753;
	bh=46opFxq4Cxv7hNlViWORRuaur60x+HbBCKE5ExD/8sg=;
	h=To:Subject:From:Date:From;
	b=t5+Qka8bo/1IdzTuULLF75WdqJ9Xmdd8e69Th+1f0gQwls8GVQsCYNJHKmcGZ4+Ng
	 eRYsLEgI253Za7pRW8kLE9FW0aaKBLrXeUXwFHuzVqT6qFyKybNWczTwk744zW2sgV
	 Jwkqh+e5xDml9gTindOQxRCqsC6nqh1goPY4FYhyRn+f+TgvYGEEb5xg0bSXYR1Tll
	 mLK8kGA6ZErqpP0XlGhzVvG83SU52uR8CpDQhyonTM5kUDyAw3t6NzCZTvgYImzYcY
	 ESRky9SOwGXQ50VH35F1YEReIFRX9xb1dDrEqfLr//tFmMZS9FI6fmq/E8f4SoyZGE
	 BybGto6W4tqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2802C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882675364.23676.18223522881731374676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3095333e76d3ddef78e204d244689934192de499d6967b2193ccc541f96e2613
Date: Thu, 06 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738826753
