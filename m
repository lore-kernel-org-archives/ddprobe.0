Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497B87BAEC
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744562394; cv=none; b=h8VP+hR44Oe9NM3I20k4fKQNrXGLxHDN1B2UNp5x3LV3JcvBppeMuscx85pU5qB2FT/FTDdUoSDFrl5jAPKlQHCrNCjhlC6Qe3iuPx4WLzAI4Zh6l+Bpf1al9qZSzkCoyboA/aP8L8bCN/z/Xaci/inmnO1URrXXtGm8rXm0dCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744562394; c=relaxed/simple;
	bh=2zzhXzSh4ujMbxfxqayo0c9qllIcKuIGMtKVAF9xV34=;
	h=To:Subject:From:Message-Id:Date; b=Ih0EivPgGXnLyoyp04um/GSNYosKcJ6vmd9m8QS7P0fJBC7Mpwk9peiu/SQ13PYdpUau/8Ku8rGNdKffOIteS/Fb1/wuj+J7TJaaQ2Se6Zztmg7PNF78IMLy2BiGi6KOCPjeW+N9Ap3m2PxZz8DfUT2DRu7CSPF58UDkbcy8M8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCWpK1cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCWpK1cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0B5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744562393;
	bh=2zzhXzSh4ujMbxfxqayo0c9qllIcKuIGMtKVAF9xV34=;
	h=To:Subject:From:Date:From;
	b=GCWpK1cEQxtKiqkL790PLa/MoGDB3EqAUGCIFrF8rLoeOZnLmcsA5muIq/gvuDoSk
	 e0Hn8RJu4QDHlNiKNYME1PQcTe2PEgeKs3+AdtOCchdB7dQg3Rh4AP4yefcMZ8Nnqv
	 vwjgtN76dfXz9IweWzhyWqI8KE9uymTa9gTfg6dQLiNy+8fUxn09DnVNPUr0XguZ/c
	 xDWXX6yFkBdI0R/6EwW5KcG/ibx4kAEtewyBJLjzqYQShmNo8tjASqLeP9iGi15u8k
	 CHMEX31UH6xGIrEuHRyRW7+0gh9qz895zJcoaDjCGf8EwpAkdLZarND3503wBMkV1+
	 QpcSm8Nwr5YIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9819FC369B1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456239360.8838.1467401990112253198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b37500c786c83d5f350101125f7872b931c41ad9f55cf901961f05f1a1a3dc
Date: Sun, 13 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744562393
