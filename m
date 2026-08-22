Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC72D3C1411
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787398834; cv=none; b=SFkznCeJG7kJjbC4yzyXq0ZnNgNGx/OJbbhGIdvIODV3V6jl0X5VWZLaZdPdJCt6IAEsAbyy7QUbrlV601cWOBYV7X/WCHBs6546n1enEpBkY3FDf2MTG6ZiM6eGjsbZLhCoaJkx9u5YYL23xXK67QXmpQUEfkOb6wahp/tImpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787398834; c=relaxed/simple;
	bh=OPENU7tBFDj1bwMTX/MdrlneFw2ZCAEu9J4dWBxXqiU=;
	h=To:Subject:From:Message-Id:Date; b=mqoNIC9piUnxh4NX3XnHd7DYJchdqefACDcw1D4+TsqQuS+LPt6jFQsUSDsVLy9lGZO76qyWuEOirk0XkarCvp47L7kx8llCIapUVrCvhvYrFdTSy5xJo7jmCmkx76XwmTp2GMB1a7n2ERHYel571nykQiXr3fNcNPxTTU/DYfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXUDcmGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXUDcmGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BA1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787398833;
	bh=OPENU7tBFDj1bwMTX/MdrlneFw2ZCAEu9J4dWBxXqiU=;
	h=To:Subject:From:Date:From;
	b=gXUDcmGtFGLEQPgdi3zioYxh7hRnXxH6niWMkKP3YTCed9wXLLcirh3lTiw8CLm0w
	 jGEy97y2jscLEOoL8JB1mNiXQ/gdZQekxGwIf/Z202uwpmKRwPMyxN9HEEi+Hhx+5W
	 nL8mIl6MU3NmcHS+pnovGd8O6O8o3xbRDH5Z+Vs9lG0MHBJLOikJzsrExhvAjyNqCB
	 Knq8kiTJr365vvYjafZeP3pzzl6K1eeTLTeoNw9HL25+UC9cKu+3f28GGdNlDkLFZj
	 MwbS7aCEljjmh7S7CTwyIvdtdor3jh2yUZkuQfs+jv9aKxFqIIaCQsBP8gVJiw/Dqo
	 wOZ71dH6OEP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0CC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739883368.21442.14868322353617450859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08453a977c941734337490f1fdf06d434be501568cf73c405b1f5a01d99e2373
Date: Sat, 22 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787398833
