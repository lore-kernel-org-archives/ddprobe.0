Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A71E04B6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736290554; cv=none; b=dnWTlyAsSVR4R6mTTCUSv18JN6UkBpDXLwqYeliOalllQYb29UBs7BvceNwnMl0PKylO25vFkjHq7KvaKgACY1VSv1eeK+VgdYzfpnNvt1CNwWHTOYTEbNKXRQ+bIf7Si+GoJarIFaGtASwDLpzxhtr8SRPddUVHCeJWPf6yUl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736290554; c=relaxed/simple;
	bh=DQjz6SFdz4kGkVDH6YN8KaSxC4+GPn1Pkt8F+iipw2k=;
	h=To:Subject:From:Message-Id:Date; b=B2eH3zVVQ/5ogktZ6fsFrkzs2ItpgKAEsQFUiEac5ZQY21ldtcERfuECVm0KlseB2PQM2BtUXLxUpY7kToZAuyikvXx5Q0ffsinAgAyh+jHzIHFJYIPj8RmVcaacqWt7rYdi6DYfaZOw5zmrdRwYaNreotgOtkZJcVPHoBzh60k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnycOn0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnycOn0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736290553;
	bh=DQjz6SFdz4kGkVDH6YN8KaSxC4+GPn1Pkt8F+iipw2k=;
	h=To:Subject:From:Date:From;
	b=ZnycOn0lixn2Lz0PjQvN3X/fbkr4Z9BUAsqx9zMqZzsLwsQ0PWx71xxrOH5jBdxbv
	 8RB/2vgw4hDH+eletLKDL13SRrPZo7yvxmyJrMm+Rvr2bI/7D1djLL8bvnsIN1GgbS
	 6tyRSABGiZ56cfd7FpzAv0QSHyOE1E2kegQOh3G3OmyzHnJnHAK0tx9LpWhOdMfl5D
	 k24X74LuVq9YQiIc38P+YXpQByxsB3ehDZXOhPcYTTXOJoDNTN8hiYtXjNQgCk/2oN
	 SJHA8T2vGf3EFUwr+ze/f8EYe9o31rDIzEmayOS5LQyEz8ZBh3efnfCTzZrlnxuR/y
	 ZYbaMTREHRqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90686E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629055358.27317.6204122844462840002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f598a3a6480b5e1819c4bd2c62722106d945464fed76283a6b67493239cf034e
Date: Tue, 07 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736290553
