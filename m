Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC73EBF2C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769257434; cv=none; b=GwmQoT6ECKzJIbgt/wYIwvpLFQk7L8yzvWDCJKcRbODRCcSsDyHNFlorxdMHA72wbb1Cty8qN+5SlAcnNImBh+fhPdprx1/+5gtSoRIycVM5xjSGV2A5sKlE8vfdbr3gV0IrJBVbuuLZWnuyO24iFs7bRBpOdaHip5/cBehjTGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769257434; c=relaxed/simple;
	bh=XBkgowwyLYqLnXn3/W9lkKq+8CPW8fHVR5UGGURQAzk=;
	h=To:Subject:From:Message-Id:Date; b=Jf1zV1jxkd4zEj/zWO5Df4DTlr+cZF+aUHeB/IA+WTH1Eo04YZhFbueCYH+Q46jCf4OcX3YaArcg6p6ybJ7u243CghLht00CbyhVjsvtMooPHyu9j5i14vFGtvdW31fb0OFx/rDpz1ziBM7Vjr2jli32F6Ig0o8bZMnYikHQtAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4J0bNz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4J0bNz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFCC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769257433;
	bh=XBkgowwyLYqLnXn3/W9lkKq+8CPW8fHVR5UGGURQAzk=;
	h=To:Subject:From:Date:From;
	b=G4J0bNz/XZWLZ1GcjBqQa8RY9DhhS6WsZVO9DdMDc/2s9jh+U+C8/BV/2fpVg/hFo
	 3VJNF3xnYQqK/JB1XQnCd8+VzChT7P6efMsZQhmmhkBrVHwAP7K4Jsyyhr/6eXYOJl
	 9TfYjBUOTrfCV9oMeGmBiqis4WomJVYCXFnlXFJGQmDgycoAaXjo4C5D8W02SPkia3
	 HzftOovh8t1IeRFrfqSXURu+KKMSR+38chWxqLUDeMEYqWcoe3OX/LRzEfBOrEe3c6
	 cDfzaDADd9vPwcaBJYvikeCMPNoEUgH4INv0td/YhSV45AV3XE3rO8gpCXs2zQ0t67
	 zG9Mip3Fc9bmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD4D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925743358.14789.7217789425368134871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8142848952640fbde68042b8788cfdff1da5632f2d0f0172af0589bd9c8df59
Date: Sat, 24 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769257433
