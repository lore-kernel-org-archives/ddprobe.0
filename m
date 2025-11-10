Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F9515ECCC
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762741794; cv=none; b=Kn1KKnUY21Wf6OLgdKDlgZTdNIm3ooS7mKqNCTgUgqbM7tS6zgp3+QLAz/FU4ua+J5zwICouZA3pFjpwCy94PQCHp2IEveUz43j8immax1t5VnbkmmfKZcRofufc7cY5yuGO/vIwQCas6cXn5A9ek6Jt/BZHcLQ+a0XWEkNPQ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762741794; c=relaxed/simple;
	bh=M4WeWYA4s2S0F7XgJuWLtsEitJL+YkaWIpsSTb2QehA=;
	h=To:Subject:From:Message-Id:Date; b=k6OcsEqUwQ1D49jp68miXFuHniSOXJm3MTjrkCwI33il7q7gysJnUe0btHKuM8L+fVHWihvun1iAggpaThkEOESJAmfug4Xalen6U9VjSSVNOJ3bgx1//X4ANJ0+f8mPAm5vLtnA3mWtjTrQqtVo963eKZHp93PhgLtzeBeqij4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Obx0IcRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Obx0IcRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE7C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762741793;
	bh=M4WeWYA4s2S0F7XgJuWLtsEitJL+YkaWIpsSTb2QehA=;
	h=To:Subject:From:Date:From;
	b=Obx0IcRGrI3m4hBOxGSVGoZFa52hXHlr3x/x2Bqp1tzsG1yiojIjyEhFIdE49bRCE
	 Vbltr3i2j0BBiWv2RboLzAhGbQ1LmB3e9pUnVA6bcDSv4/mCSPIiqySx8x3U1VwebN
	 tDO4TNYMzN4ggVvcGsWJCILj01MY/HUnCRfV+SXEhNNV3BQ0EU0rYiaMHj6/ivRLCm
	 XuUnjRpbXnlMN2aVZGhrj2ZQo2iOgN1uYAfMSdh4AhXTdQSNDifY+3cVWRU69b7hPV
	 G50EJmOKTYCTiIIyY9EYKHLvmc/egA9eiQ+TJCSSx4/FrOlcXPF25Jsa36pMPVypwB
	 0W20eKG10hXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E345CCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274179357.14595.12642631925663962855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ee273d8db1e255cb60fac76db93ce2663bf471f3ad2ee9c411e75ba35d54e8
Date: Mon, 10 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762741793
