Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D9323CB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755499793; cv=none; b=Lj8l2QVSrKQLx11ijEZRxCALCTAdXoy/+oSjMJabXEU+V1mFhHlSKMrVy+0dXRbMU5QkO0+XOHC53a8ytrCUQZekodmy2DybrFWY/WAITTvc1QY1xfnMhvoUSJn6V0Hiafwy+OV+p2S6pEGx/ragjGNBzY1Q44KvZTmCmwOdD9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755499793; c=relaxed/simple;
	bh=bKX1QdnLlIfhVnfOU9lPTrQM2qIdlK27v2ikiKQUOb8=;
	h=To:Subject:From:Message-Id:Date; b=ZrlvLA+b4pz/xSURzc2BSNbbEg9Bkz4PNEdjVUS+wy3gM3ql4Z7wCTLEydzhvdV1AHpAaMrDKJgKunceWaHL2BPklWINburNJZ6f8wZO0Gph+w4PEeyixYNwiSCW2Y7rw05rs9+uNzrtXsVYtK8XW4IJgUEpmDFY/hGse8+gXpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upspNcDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upspNcDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F395C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755499793;
	bh=bKX1QdnLlIfhVnfOU9lPTrQM2qIdlK27v2ikiKQUOb8=;
	h=To:Subject:From:Date:From;
	b=upspNcDXUlxjWma9P2OHAySadEUSiA5m1r1zED0FqSKzvjeiGPmlwBo0Ie3M9kIZ/
	 m7tR2r+2jJ2/Lwkh56nZWoV+6Dg0tnGELdMynD8i/Ir/MyDi2RTIFkGFmzlcaiayVH
	 +2wFzaaLG3g/oMKQhbKpHpeiZB8V73LwETa4VVO0fyHwVjWXDyivZlRT+TNQvwWteN
	 sl0Ggtl7+kPaHv+D60gOdgFuVJRuR/lWknLpcurIEHMrEaxQCi4JU2uJJOEuC6M+WH
	 Ae3GYPW+e3liDYYxjmzWDfABjc1bJeoJS/LCyC0TCOZIuuSuKShi7DvNJJCL1xdKiw
	 d1MHbC8ZlygdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4B0CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549979357.17043.6657336256012539717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a692a421e3d8aa1e9b1a2d1a8c5e5545ec928c6e9ba8b6e179ce9232e9662582
Date: Mon, 18 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755499793
