Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DA155783
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716208943; cv=none; b=qeXD/zlMsqRX53uxRyJTZFQDgqj+r6GiYyWL3Aa9LEpZoeY7H+7rRn/NNvHH8GSBEdYlm1hMVZGuWGkrBgqFOMCe8vUn1+LpXUaFkHicwwxhrb4FyR3NiioSvh7oZf55j3WHGj6WNgRTxoQWwjJFJffqT65wDL7dyVCVxMgZZIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716208943; c=relaxed/simple;
	bh=Yf35bHoVXqweTuUG/gs1WxWmI2IPi/Vj9dr/jNfSyWg=;
	h=To:Subject:From:Message-Id:Date; b=rQCxX9ruR9Xym3U10uONPOYVfSmMLSq5FKJrG/7tHHaHbg2Oirf6Sj8dywReyFubLKntqwsgA78lZfcpxyy/9f/vI+1+sGgbyD0HNE7vyLeaKcv8pKk5LNJF/+gJgdbEMjrN1qq/YQnyYEBelIDgFU/i1DVlGcYhrfYP9fz4S+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqDI9lAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqDI9lAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED0CC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716208942;
	bh=Yf35bHoVXqweTuUG/gs1WxWmI2IPi/Vj9dr/jNfSyWg=;
	h=To:Subject:From:Date:From;
	b=qqDI9lAYeIDmilhpPiW+eeTcb/VNUW6haRZZY2q13UobipxcsB4PD06PWgxJRuCi6
	 QHkl6fgiIbbqkFTPlBcYA2zdwz37qpYi51lt/cU05lxnJzh5ylCsmBlzbu3zWkOSph
	 0CxKttGNYdGO0ub0+fQZvrt+RlIkXwrGwtOioOPC9hWQzN+Nyo1FAp7dql7PHkODvc
	 ocU1ReVpQxi9RIimTiPkQkdkwW9QMsgQ1K0BH2Z1bk3Pn0qEn1CqbHWWtCwdT2JySk
	 qcVQ5uK/FRHVte3nJ86hjceLHLbhfq5x6xy5/0V4QTZ5ALpgVBU7Aewl5XKZ/o4f2g
	 pDSEkpQDtWgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C998BC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620894279.22034.9991444510666827725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31b7677749e5348951c009dde520c8cb13e024231890df0a8fb773fbd5a96e7
Date: Mon, 20 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716208942
