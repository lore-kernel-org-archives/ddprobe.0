Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554EE1C84B4
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740316734; cv=none; b=TzMRYazad2X1bEOAAEKNTjWkOcboME0hTHldO6GYYB1ekkLIJ4cQFtywHj6kG56S97oXSwrDtMRhs5ll8Jo9RncSye7s5E87mW+PhpF2ka7c5aWHYReztvZWpASmQB4oC1PJoZmoXD96Qq/d/kusclar0T3qy4geoDOlHVU7UiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740316734; c=relaxed/simple;
	bh=MTaNCnOcwrNUktHQrkFRh167/A1kBkC8L+jrMqZ7zZ8=;
	h=To:Subject:From:Message-Id:Date; b=oP160t3Use5E65ST4EiV9eRPvyQZdqVrzgTw2ywWi2vu2fJmaG+ZT1Gm7HEqtaBRBnKvhLKAcJxNbhxtfZJjn6qKMzfSGJUuABTSV4y3PbBVaxxxI3BYgWHcEjTBH2DTdir/gkQfxY5t0MM4w+KOwtz/l6cka6av2a6m67QOTZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4EDy0Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4EDy0Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA17AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740316733;
	bh=MTaNCnOcwrNUktHQrkFRh167/A1kBkC8L+jrMqZ7zZ8=;
	h=To:Subject:From:Date:From;
	b=Y4EDy0WtnAFGl521ONWTiNvyYhaQ9dm8/RuOnuQ3Hk3ePJaX697Sk3WRwek8ebfeR
	 FgfAddgCXSqY5wly1oplLtwZRITygutY9Zj9+ob69qwMJvoHIE0K4XL+M+WgX+fUQe
	 gPrW/1CPFMhDn7n6svxv7twr0g4iSfcf6dNQ9HTfxWqQqBvI8MBUu5u3Wr37PP6kbV
	 HrQTDf4FH11RUmCzAOS94yaHm7wbPZZUKupGkLYxChCZNYANX4ccoSxuKGNC7ltQZq
	 P5bhv3XVqm8BAGUkOj+E0dcSl1xUgF72916aT4cxgCk7X7h35q6ydDzZ5V9EmJbMza
	 pTQBd9sIlnCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34B8C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174031673362.25792.13485884139244972720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12a95a8e50e59e20c7d44efab93f1e451d1a0ce5ca1b0c0ae2c9a67829cf730
Date: Sun, 23 Feb 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740316733
