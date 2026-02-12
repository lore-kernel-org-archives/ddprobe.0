Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B748145FE0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770858294; cv=none; b=c2sba+QHCdvKXobaQ77x3C+i+dTJogbH/qAgmIaBGm8FR4wuV9hei2ryrii1kneN88bRISVeXZOV54EMLpsnjDTtD7UuWqav1ejm3qTOM9hswXZmenMOdpWo0GDceDSgQ/d4TWnDgL3gBECM9wghDPhI8eMAyCVnBPWsPkIos6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770858294; c=relaxed/simple;
	bh=L7V3UqKUwjJ7sJhbXVOGE0Fa4eJw8ko9MyvHKdjfYow=;
	h=To:Subject:From:Message-Id:Date; b=LRo1O9TRFzCmKnCWe/QEGwojuGSNkjrYWevm14JGUfThZWnx30X4HlOIoLDKuBdeuz838aX24uiMPbhqQe0XvqB0UUrQr1E7unfF5zzvhJ2Mvr2LfIc5bW0Rri6HFtQdCdQ9FmfUoK4NZZsU7BbHGQIXFXeYf2SvgZfvUeskkcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7QQdlhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7QQdlhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F1BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770858293;
	bh=L7V3UqKUwjJ7sJhbXVOGE0Fa4eJw8ko9MyvHKdjfYow=;
	h=To:Subject:From:Date:From;
	b=W7QQdlhqkNauOugYAdTSfmLw0igFthfFr6ih9MG2cONxayby4Z9rpnfpM6cQXNi1l
	 virRj0NAOxx0cSj5oM/zzBZl9Z8C+wOwLpk9Ug1GRU7kDyDr2Y9UYgqXiKtodS/26Y
	 xd/uh2lPxIpoYGwfaSA0X+s3PdGBeyurmRAzvTVyPiYZ+mR/OHeEY1Daj4JGS5xgue
	 gPmPVrrve/1RHr/AlDUJpK5gjoPL6sbEvUbvE/cc+n5LO6XYkpkjiuzlEhfi+tN+63
	 FDEtmj02joqtDUV8peFV0RyVDKLie7qEESpbQ1Byk1a/XJ0xRHh2+7fBUs5JFALb7e
	 lRFnluA4xEsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE08ECD6FE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085829359.25743.4319235475057941411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3329c86b12909e4941404138412e689c4999bb488423ec5b819c6540dc5ceee
Date: Thu, 12 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770858293
