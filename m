Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1793F286D49
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755503994; cv=none; b=YlROE/i9lrW1om4F9M+9SJAQEvBjDICj7ySoVMbJBKO5BSDp2j5H0cGYBlVxb/MSIPb3qCXFKrX9GHIoebZLPtGD65jYUNLsr6NLUwmnkdvHF/VDAsJje9o3OVhwXFhVNdLNL9oc93YNNlKIIrLFMBttf8IHt6LhExNbLiE7k3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755503994; c=relaxed/simple;
	bh=0a4v8x8npUG5r6QBgOKOI5wVHB7LbZuxr0szZPt0jVU=;
	h=To:Subject:From:Message-Id:Date; b=gsntATLOAFfNWxSmhirkVScxkprQ1O3OfE35Q0KoDBre/DVGW9aKsmj5ms9P0NaqH/gJ7Lf4lFtx0ReJ+LPnbv1e1o++BRGTgZTmK/fUFL2rHx5TedBRx/VoR80BiHe0BRo3gyq8MULkFSzB4oCvHx+QGswl+C5Sv1whTbptdm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTDmHoNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTDmHoNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7823C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755503993;
	bh=0a4v8x8npUG5r6QBgOKOI5wVHB7LbZuxr0szZPt0jVU=;
	h=To:Subject:From:Date:From;
	b=gTDmHoNtGcY/+GpPCw9RG6mdFO6suGi5QHT0scCsp2+WRpcJZkInk5b2NBtRrsAI+
	 zyHdDJGmMk7CkKqr5QaAfBM0PP6U2hU7ccxAFgMjlMspG17GPFi1mSDIbPNqQy/ish
	 I2eOahwQLS5QiTYMqKtJi09oBoNa5dnIgy/uRkVlT5AwDs0wuJDPfmBzUms8+EhD1s
	 DjFaTE0p75e9nlZRvoJabI0cI545EKDY6jygL9516gUtXUp0fKZ3rq975xjZc0/T1h
	 y2woytsojYA35sVMCWYSJFXaNw714sAjP0cBGi7Gu5r8qUq1I6ca3woGbgn9ucZ1c4
	 bNEI0kiVFMC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93147CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550399359.30258.18280388159320735640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4fa35583fbcfc75a7092ecdbbe33580c67b4e460799f819d7769266e078753
Date: Mon, 18 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755503993
