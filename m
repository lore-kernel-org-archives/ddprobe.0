Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D1197554
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723817754; cv=none; b=MiVCQYzr7t9yDkXsDsrRthqN3SN4hiO48ySAYrSQLHO2FXcHzfggyHgqT7AJPZgaDv/Myna6ZafbFx2LkiC7RFvpFClMWm5/0fPzhvwXbPyOxfK2ESpmDTiNVAVto51VcoOJEXGwJTlPrlGFaLY/YnDXKqnygKgjfg5OA32xuRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723817754; c=relaxed/simple;
	bh=SiLjSvxz9+o/DWzGKaXjkdklwVhIur9rDSeXUcXPK1M=;
	h=To:Subject:From:Message-Id:Date; b=FCnp15qXMx1iip7jooq/dA7qrH1MwYh6kaxmGwQNH3UnMvhS0j7bxV6bUCpWU/Mak9ixzMNhpk9qFWFYQYpe4HLrsW5zMbGCrx7KOXO7Dyd+v9FR27MKB3sOIYitLnk+oDcErTByiuyjpS4nHznVAvFOXZqX5I1hn0rOp133LUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8/8K1sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8/8K1sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EFC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723817753;
	bh=SiLjSvxz9+o/DWzGKaXjkdklwVhIur9rDSeXUcXPK1M=;
	h=To:Subject:From:Date:From;
	b=n8/8K1sfdb1FypsENyB/ptlBD0ah2TJgO05rG38c7rrKcoN06hbf90CISzRSGeZEn
	 nfl3Azy7RT2PNyy1QsVZNi+1MzU3/xgvU3p8p3HIpnbh+5+yPEo6qJDBepwPpjA94c
	 asHsauHVJlu4BvADFAass+8kMFS/PCMKU4iLvepIYKOE2y3U08dTZ/SmVDM5P2M7Z/
	 qR4PibcZvfOF8HNTU8x1rSV/QASm/iJ0dBcDc0DEN7VVgoDw+xIy0j59KjLTU8VMwi
	 s+xbSq60EHkyTX5yutZF2cAI2fq6+UY+sESj4pzaGddBdSaIIzmVxC3gpT7qYIrXTh
	 Bu0f7qv7TBBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93942C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172381775359.22066.17415017690756093446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd60bedeedd8b773f486da76df88065bd71d58e43af95f87a24a29d2f82a9bba
Date: Fri, 16 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723817753
