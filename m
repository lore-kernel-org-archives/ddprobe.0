Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4F71B4244
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751834395; cv=none; b=FYcobgUkj4j4i5XaloHTVrzJuGlFy53fnIXRuO34Auxxn6wuD4pdD1e7afK/cZujDKDJC7VZWOb7aPWeSiVo/0PVEPvsjSqOYHDW65sFiUq2H2i8A3FI9qYmUfToj2aTa+yJNDvEFWNrtEUIdRdE0x0NBPjB8qtDCqZRIKIrEt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751834395; c=relaxed/simple;
	bh=/oi+jiyV0xd91ZZ4W0UNEZ0DKCT8pRZacWrNtO/M/sQ=;
	h=To:Subject:From:Message-Id:Date; b=DHvkD3RB9ItfA9/pW2FRkhXNYtbh1wrDsevEgYuBVJ4y2IglRi4Jyy/tevG/JCrh9lTmMfG9lWD86JU60R7/6Ap3zJvGY7HYoNwCYXarT5h6w/EW5mPOaQMeual9wYhZNbrtCqCI4+sI5Damoy5GFpNG7iv1jhC/RlfApv9wQ9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz3vRXAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz3vRXAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1328C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751834393;
	bh=/oi+jiyV0xd91ZZ4W0UNEZ0DKCT8pRZacWrNtO/M/sQ=;
	h=To:Subject:From:Date:From;
	b=Nz3vRXAvCAlj7J3dgEGS+MHm+mw4Yrkw57j1oVKY5m/hoK3sv4bASP84yDvgEIMrE
	 zUXNk1HZmmW89s8dQHq0pZiRv2U07U1rcx4pqLGChgqAx9vJsNAyboK3LkjszeuKt7
	 3ar7JBqchYXaqFwRym9XWI4l54/+AZYyvmGj7ifNSq8gl6rSjMAL1wSk1V4ifk6V/V
	 xlVjlyW1L2DZp/8E5QUQft+AMHjgKYdkJa47OCLeWMPOP9HXAn35mC6bomhrh4ArAK
	 4D8m2kidDaKISYd2uiHhoFmN06l+wZ9hPnctxF4oUgPVfaixpGQLy4NoysVQbH9OWI
	 xO7YiAIUC8FQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E773C83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183439357.11901.15491709196015078461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01bf225e683e45c3486921ac88961c574e158153d945c3b13b73bd73352ed44
Date: Sun, 06 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751834393
