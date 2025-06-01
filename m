Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3442DCBFA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748761195; cv=none; b=ZgplvFULKvKSEphhJGfYOhxdjIlfJWPOep3e0MWPgEY3f2musojhyYcoyrcWl9Jq/OezZvDjoqsnSnYi82vpGRoz1x0jY+YKDNYrKz62NAjShiwj51xS9rlPh61EfUjj6TwDGpQcV/ibG9sdRMfZMDwgsa3pkanREkZTISHSXIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748761195; c=relaxed/simple;
	bh=eJA8n9Wyy9A71SGPMlk/EIDvxG/Uh3ZxKC5ZtwkS/YU=;
	h=To:Subject:From:Message-Id:Date; b=JGK8Zs1tUKuJY8QpE7/e12z8p7FEsm4y6EFCTKfjst3ayjvAud6+f4noM+fZDcHVVt4eAWmvKa0ItWQnT5uNw7DLomlWU5+04Zv9IOdb8iwIIeUW+zJQwYbGrU7vaOQn46ndifqte7FHUwF7R+kT+scV7PpPHVZ4ebm84jVAEa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBs4J16Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBs4J16Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D66C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748761193;
	bh=eJA8n9Wyy9A71SGPMlk/EIDvxG/Uh3ZxKC5ZtwkS/YU=;
	h=To:Subject:From:Date:From;
	b=EBs4J16YbWvPjw66UI0MdSlqKgd6eG3qcIEQnyJQGAET1x/5PHHNNjNRXPVSmx+zl
	 3B6h9Oyh8AOEIa6HKL++K++EqFuIaHiKGHH/f8clbHD6C9jePDrUq2fCaIaQzfBTET
	 aZyninpszBq5c9X48QaOIpvKhiXEU8mlKs4QaouBhueq6ueBnmLQZGsvz4km7pVF05
	 wvEUxBvv7gRROX0DnabuM4xSRS+S06WyeD6aTk41oi3PuegaxKUJ/Od0Nh5AlRkDSv
	 QeJn58PPcvvOFpUdIiOA89TOKH/XrnBzA0xG+jYnG/I+bjqVGym+r4arCZilsyk/F0
	 09vGY0QZALEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B557C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876119362.20274.2069637369054960588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccf805eb973a66b71e090bd24554e341e2ffe34b8890ca6c1bdf99ca778fa93
Date: Sun, 01 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748761193
