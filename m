Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6295B355814
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785219634; cv=none; b=ZdPzAZTWo6bG+FdzYhHAk7U3RxvBL1rsY9xDeLq5iswswr6kaVrPScpSzIBU5Kc48U21kUo9D8iuIBPkUzrs9M6fT3jo0At7IJi/Dfi/N1FdKHCyktzZZll2ej0h7kOexCUZ8jtoh9Xr2zScaRCLCdBGEWLp8J4sHPCDshnyLlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785219634; c=relaxed/simple;
	bh=OKSgRShR1DSS5fE6t7/XGCVzTp72uIHlvH9U9v952oA=;
	h=To:Subject:From:Message-Id:Date; b=J7pTR7mjbVRCWA5uh9+kWsFBPTZlgPx4rHX/kadQZQG21Jnn6FarWMD2q07H/tbcOwi3/9VUU6jwUR0f7yVOWpFQ73hR8s3rn1wpjL2LxyX1Zo9sfctY3zP2SZWh+QEXMmrP8GlkNTtS0tMI9K1/cY/+Ki+fvHz6VWo9cfowN2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkHUpOJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkHUpOJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4BEC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785219633;
	bh=OKSgRShR1DSS5fE6t7/XGCVzTp72uIHlvH9U9v952oA=;
	h=To:Subject:From:Date:From;
	b=CkHUpOJopBg72Kzxgj+XlvJDcgqzNcrWnUiaKuYbuQhDlGgKeu4wRRYM3lkH95itw
	 R+QTBlngMiJsx42C5H3qPGjHJ0IglkuFhpHmUdyR/lXWwp15ThHsoCP6We9zZzAAeg
	 Tj9Dyi/lgf3dVZIEA+YXGI0Rz8rPxzCcHtQGEPod6ax0itsGm/IP3kiLWUoFrrkVN6
	 9jZ1fPln5pkTWB5LlQe3083ObN7QWZTlSSXcgDwlPP4qQyUmRDjh502V/Cwooq0fhs
	 QuAJxalVkoSJV/oDFbagwln54t7RrCuaHl2szgmOvJb5rTBuNnxjDFThWVboGMa98Q
	 biQc2MOrUKEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E95C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521963373.15353.508949415711847815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806e2680b7dcdc70c06124068048b797764779d09f921caaa6cc35b35fad8ada
Date: Tue, 28 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785219633
