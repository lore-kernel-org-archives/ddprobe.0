Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FEE3A6B8E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790226634; cv=none; b=GC7Yl3oUsVsQljDUufl5mpL+VdeoEsltod0HH6+Thrz0jU4jwarf7kdnkpdcNFx4QxRFI8eidB4jsahFZdz/x4VlZ/v62vQ9laSe86qBbjN1Bc+uFQc4iPprIeXPTi3kIibKqiswlXzUuwGgND3ztcnk3Z97HNMRBpgEIeUifHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790226634; c=relaxed/simple;
	bh=PlolLTSHT98oBjk+hMMjL5RxaowN/x0H1w7IAJ9Sw+4=;
	h=To:Subject:From:Message-Id:Date; b=uMOdh1FmHnPVfHZAz8MrmbLkMAz25RP4bh/+lhVRpVz7lfJKuuNfzQ82WTVXEyiAtiHeCwD1dVovkNRgqRY1znxvk6M2pJBChNuDtEBBRtDr+eAbfe1aQA6M2DWR2c5uXG2qbIKqGQ6Bkwb0xESWRDTVqHmdrJ5lxFy8V+YX5Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8IHTsRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8IHTsRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1971C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790226633;
	bh=PlolLTSHT98oBjk+hMMjL5RxaowN/x0H1w7IAJ9Sw+4=;
	h=To:Subject:From:Date:From;
	b=n8IHTsRql6O+92YfwdT66+hb/V3m1mJhfXVDdpwOsqJHy795CEOdNBx3rMf7oqW8m
	 n3HOHA0THn0sPimcmrb0kXfkpah0nTH0RicuVTS9yV0WiIJLvitxc0H6Ml1zH4TM6j
	 0Wksa9wdMUu4fgLXEhvXVJF0pOpcP4iuaBauugozbbUKJGDDBIHgNfcZSq/245q2CM
	 rrf3sjuvDVq8bTRc3H2m0Q1B7iCqgeUgrGAOiotrQwq/5YFDrpMzGK/weKdNJfigPc
	 YQDKNvz4p0sm8iuZiYPqc7vwFT8Hz6LvhGObFMW8B0tMuEydbmR12DjQEEjh6UHGWb
	 BHtswHEWQw8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD4EC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022663370.28208.13661606187028159250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d593390918a982a358891e9626bb9347a74e51d8a98020cfc78207b8663e1cfe
Date: Thu, 24 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790226633
