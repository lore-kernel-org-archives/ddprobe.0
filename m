Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2115E32E68F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768422834; cv=none; b=FF8YjR6M9JiQM4X/mH/brj4aPsaVjUpKqxGDCnT2gfyoWbDCv5QdRrXQT7TsIAxC318ovBjIZNmDiD3Bmhfp0j6204FY8WWQ4cjPrTzEBIgE7h+MK26Y5GBWlQrP7/D49C3YDTWlWsKWGFtNF5bwcgy8qic9R2loveryrn3CHsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768422834; c=relaxed/simple;
	bh=mDqndzTbTwA8N5nv9yXTY9A3pNNge4vf7iIaRv3fJ/c=;
	h=To:Subject:From:Message-Id:Date; b=ceuIKOna/RdzwfDT8YMvIpiokyK88chBLKrDdEZlKQZ4brdiyd5kTFwntTzVj0MvPkVpFsYc32/URPa0ZARqgi4qPE6PtTDD5TrADu1ivQ+TVRrGCDbBRj+3dmyZFt9xtar5HpDd4fWVqOIDpTk/H/2eLnBNrrmvDPOYdblMQWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/hEiPkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/hEiPkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8460C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768422833;
	bh=mDqndzTbTwA8N5nv9yXTY9A3pNNge4vf7iIaRv3fJ/c=;
	h=To:Subject:From:Date:From;
	b=C/hEiPkHeHi5vgzXwSMToMvw1Cekao4FwYCxmItPXY/2SifzRkJPGMOylO5s2VB5j
	 ek6nMhJefsvPiYZtCEuK5SR2TBaDCoauiToT8v8DSMf4TrD44XhwAHmVsVMPnPO57F
	 xCxB/P3D/VJTEz+jYOI5M6INKtg/vyCivz6wRSpO5Wtf7o5uEbBiuNTHIsxfDEVg/F
	 VFrXah7EeFR/feo909/yuUmwZFpTF23B+QZ/9w06KqJGYaK9krEsND+LLgeMw06nrP
	 wln+KPp2CSRCkQ3yEMQXGezBB3GnRRf/OX85+nStX2U1yWoLK8Kah4eOh2tXd7Evd6
	 H6rsxyccDPtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E2D39016
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842283359.8203.16720624964264842436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a796b3ea063101b9c5f98fb7583250cc469dcc7be6baf799c5694c99bd5426
Date: Wed, 14 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768422833
