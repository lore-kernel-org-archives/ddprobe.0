Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB4D2E5B1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775932654; cv=none; b=iG9PDXl8e1GBjJB9AT1bKsRsnXcPMeUpObG1UkKmSKjEDw40j541vIJlkjFsZgAh3z1sOrwAX7RrBx1qkD9i6AuVgT/ttNiAQHFZWHpbN9pQC9Q+YzMNmuLHS5saSbeS3ZFmQwt9/AQdb7dElVr8RM1fBrffRaOKnC/rN26wQIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775932654; c=relaxed/simple;
	bh=YeRxB5fJ1DuvUB8zWMFU9xbmrSErTLPjulfGOmHpIfQ=;
	h=To:Subject:From:Message-Id:Date; b=N+id6msDfhfAkjpW2gLsHZc4kIZH3EW6CyYF5y0cmfgbYzU+4QiJqQDxXmwiV0s2W8A5YSM8CQigJTNF1PbLR1HTHmr9ZOLDEaJpgbDCS2vvWuOauhlNarmQ1mu2NBOVGcOfY7aidulZcXzXXhdSXLf6AkF3kE/uON7Ghowy8ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V40guXTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V40guXTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE889C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775932653;
	bh=YeRxB5fJ1DuvUB8zWMFU9xbmrSErTLPjulfGOmHpIfQ=;
	h=To:Subject:From:Date:From;
	b=V40guXTtKciuv6T05yT+s4L9nklFKNMnWhjkJHWr2w3SCgDLhwwIh0U2cXLSB+DhZ
	 Xv9SJAqHw9J/Z616VUtbwmZrcFRuaL7AKaA/ALNvX04TlvMUNj/3sFAg2aolyKprBZ
	 5pYGU0LAMfcwr6peqcRMwCHGFBVPkBoc1e42m+7heSa0wHvaqirBwNxJy5pZ1ISQ+r
	 7CTbAHr8Hc/NjnXi1CqnCO2zBTfr3bKQrVmFWpVfjqUwr8Dyrm2+WqXljar7B2Q17L
	 4sl59uE8SCOreMTj+TPknKRc76rI3bvXgsX/lCTqFyfm/s00rBedpq2k00tIvBYEvU
	 NzQmKGd8Ot55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA575F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593265368.21515.5368205719340059999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b72cffd83212775fdf022a07afe7016840fd9c112c26917137c7009a9d136b
Date: Sat, 11 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775932653
