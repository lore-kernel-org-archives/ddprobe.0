Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDEB1E86E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756253394; cv=none; b=TRt3ArCSKSpK/oFXXS4Z11BKzASueZ7PvDwtcydXV0EBvequi/nHBQ9sBkCQHhcEbzdVJWBd0vmonQFR1a1WJ5X8I/B3oB2nvHysPin8aSO3nQqEMxblpYi4zkxbREVcK0OxmVDHvvVWB/eepBGv1uuMihuSs8N4MTfQ6tJfHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756253394; c=relaxed/simple;
	bh=1AztdD+8t3YAvUiGZ97zEpjfveTbDFg5b0yq9V0Zlww=;
	h=To:Subject:From:Message-Id:Date; b=sVCvSu9+fgEaIufsTjPpq6IqU2KBMCxdyPpcW5WXRTe1XN1BNXApU+rymC8FfuM870/MeNQh2aEaaUoxLGRme7geRGxbs2Fzm/fgC2SRLJCNPFSDQIHID5VsC7W+E2dBvn4VwIvvowkq0Em4VnlCPOBK3izJ8bQgorQCEMjatHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0p8Yohy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0p8Yohy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6727C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756253393;
	bh=1AztdD+8t3YAvUiGZ97zEpjfveTbDFg5b0yq9V0Zlww=;
	h=To:Subject:From:Date:From;
	b=P0p8YohyZAfkrkZmp6hAjgsZe53iFkwE0pM8Yt8pfORe5ws3J0N65PuEFrl64+8ay
	 zN4JTDCGcNPrW4nIfbHt8ipMe4njRlE0/4fXAKY1oDwFQt4ZThDvY8ytFoR1Y1ghXP
	 /K6c+Hgj6Yhq29JKr8H0csbyrhDgpHzJ5xIy1E0Ij92fMCgLORZKPHMA+gdRR1CJrk
	 UCltkTYLdlL9ZDVQzogWqyXo9BUWXYY9wgb4QLtFUh31jj+sW8LvS32xVaI/f+znva
	 m/81epJNu0kNi02Zm5v5EgdrGxxqVQS5EMkhbrkJctFLXM+8ZXAXz3aQy3MXhhdEQq
	 DLsA341N6ljbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C47CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625339357.21380.5350336495894096376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ea0cc871cf5533ea5e4c8108380742ab01acd835691b42fe76aed39c575620
Date: Wed, 27 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756253393
