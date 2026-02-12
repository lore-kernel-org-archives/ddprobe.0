Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3DA33C53C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897293; cv=none; b=r3fTjGQTL2lCbGsZgTBajpyiU8uNCbK4KvCcxm7XyXm6rG31Q3X0KRmWFv2Feoop6PeaWDz+gWNui8+1TUj1SeKGaAmfuYwDuPRoZkBWve6KqIJqzT6+gfcuMlAWVREF+fJn+KSXqM3+3E7BdAqt5azO8oU+AZLYdYVeHRsSA9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897293; c=relaxed/simple;
	bh=sbAP9GEKOYHrTI5fRGQRxg217h/TNCnw8OQTFGYVKZ8=;
	h=To:Subject:From:Message-Id:Date; b=tVsP4uKqKcQRT6icbZILY98sr2ESQBVE/tGfKXEOEjeDzpUYz+7QLA3iejOmPBxjgIF61uLhP2gPIk3XxAVThED2Tk2YTt3ElYO4oyshUIUfdHG7UwuDRd+PfYOeDGmxaW/N3/aEjd8ivCObWdlwtHDQxdP450bhJM6aw3YkX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noY/5JKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noY/5JKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18FEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897293;
	bh=sbAP9GEKOYHrTI5fRGQRxg217h/TNCnw8OQTFGYVKZ8=;
	h=To:Subject:From:Date:From;
	b=noY/5JKoOvHBjhVBhw258UngBYKUx3MM/YECRhvv1icFwtfGA3ieUfUdwzUfH22JM
	 SDGKMWV0QI4OXri9arHAXD4PuI9qYfhbTccyCUEf92OdSF6n30tPJef5jzNPWLo9/E
	 3IkenByVB194PVB4WdwKFW0eNQ/jKhA78Ac4OMQUD6TGfy/zR5IXrACwISIRscf7kL
	 vuFN+fKaMaGP7y6DM4Mxyw7jsYaqgTfGP3R04c/FYtGCiCzYpqcQZmmXWnTJi9aaBB
	 e7DDMkqewMaBeAClzV5fQ/dSr+t3HHUSIANVSV/SSDj2Cw1IiSIe3HNyPso2ZI8iHf
	 HGnVslrNiVdLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CE5EB48F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089729364.6701.1408238468729179326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd07660880f96b43f7ae14930eb984d82fd9430e262f57e1ee1689442233f44e
Date: Thu, 12 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770897293
