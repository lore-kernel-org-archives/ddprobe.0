Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907F41F365
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786648234; cv=none; b=JTZdSYxZpO2dYCD0guDEB4j9CicDzleH+uCh7z1DwZz+/WSQCoWaZZBdRo1Tc36U79iON0Ix33xwGyBtwz9qDDcwi1VqL+hXRN2JxPeulgMHxc/95As3lREoj2PN8ibRLcx1wy4RL6tV2NTp4tDIDjP57yw4alsEFB1fMF1Xc8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786648234; c=relaxed/simple;
	bh=gBxesA6o8hkJGA9pQaU3fxReLXhautSiGGON+N/nM/U=;
	h=To:Subject:From:Message-Id:Date; b=aEbQldOfCE1RhY6Y+qpalggvcF06zq74D+VwtHW7mE7eQ2uwrd0fr5KtLfxfYemhiLUmzLc3NHXx7D3MSBaqtS+u0G17esZVpgOA3Zg4u/62G5DREarwSZ4bpLIzlgIaYIZxLGDRFBdQ3yFjNhWHtGiGocCGRIlpg+4OkbBabfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9OXl5Hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9OXl5Hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B0DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786648233;
	bh=gBxesA6o8hkJGA9pQaU3fxReLXhautSiGGON+N/nM/U=;
	h=To:Subject:From:Date:From;
	b=P9OXl5HbkiS0HygOG3PO8l/VULWf8U1qu68wSK64v6hGteG9pxmp9BPjk1x7QLQZZ
	 4JQ2m9thuSim+B8yqRonNzVCCyk1CIBDgVWeUhmTazxUq53wMNEHzmuOta2nKWe118
	 b4HEULabPDwtK1obQDOttuEQ4Zepm4nH3CfLChtEVM88M+Zz7+zb+LYl3kjfoOVAXw
	 k690hRZXtyc0H5CfYgSNSchpjfv3uqFzV/rieBGNSb36APc39zjdcepqdrezVtA3Uc
	 J4FrXJielMYTwn1wD/C8RHWffGKBJbWHAx6PxkcfSgQ/rIhLYxMPONGN3sbhsDjk+T
	 n/fLuM4sn5s7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F8C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664823368.1720.16785161835441188656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc2b92ade7f4e6c8c2526b123c40a635c91970f4017122d2eefb71d412aad5c
Date: Thu, 13 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786648233
