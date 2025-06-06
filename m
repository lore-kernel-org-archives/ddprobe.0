Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000C7FD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749184794; cv=none; b=aUUmhkygz0YH0p6ftY2XfV62iXFtkPk5ldypVpJBgSqhuMnvVByOOLekshxPYcLAWo0eODGcvYYccvmWffvl/yqDz9QSFa8p0XxkRTDLiRKOIH/awWJy9yfD2N0wMl/E1o7pTqZFR49B0rusH9K+gyqowcSNCd16/WzRiOoASps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749184794; c=relaxed/simple;
	bh=+ZsIOeOA1aURvlbnvBUUg4dS+YvnDwAgChMwnez+qY4=;
	h=To:Subject:From:Message-Id:Date; b=Ajo+7qs1fYZgQiPYKxdYFWjwK6BFtBu9VPXJI/SGac4vjY70iNVpHKzHgppuN9IxNlbs9lHaps1kQ/P0DfxwWbyliongxOKIP6VetkpCsjntlI25BJAaTzYVAjQcgk9whx42Amgr0pG3D0Inu3UlgGZ7H0i2ZQcLFuIeOTOGKMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9cMEW1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9cMEW1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9359C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749184793;
	bh=+ZsIOeOA1aURvlbnvBUUg4dS+YvnDwAgChMwnez+qY4=;
	h=To:Subject:From:Date:From;
	b=D9cMEW1lt9f5l/A/wgSRX+BLbYXCQF5Vi/P/CzVfSEtuwKb5efhG3CAI7ektAIgyK
	 w1R/D2JwBY4sSIesz2ynRrty7aNj2N6zKfnjbBzQ44wamisBpGa0PKKmGrzZuVkYoD
	 XWN3ekWWNW1YThp0c9kE2VnCJWNGEZ9r8JsGL2InRxyEOTDkUsffjjaHh1RoEFE02M
	 9dkJi4dHIo5cA2aLT4taqIIm0veM4jY3bCWzXZtURUinbjCmTb2sxfhOL+J/5zZsbg
	 OZ2sjYbN3jOVKBIunl4CfWyO9sNANhkUKzOIHZpTld4nvQ4EL8jOUIqTxsTouebHn7
	 8iQDbrFo33yDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B01C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918479358.4444.94473643774223909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6261f1c1ab5c4dc521230e94282c86134500a3c9b0f8704f288196deffad46b
Date: Fri, 06 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749184793
