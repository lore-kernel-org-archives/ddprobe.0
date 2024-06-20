Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4AE1AB526
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718882423; cv=none; b=UCWW1dvox+JJwetQrdyPtR6PHLFqAUoBzFqvsrwJFDvMWOKNSyk4CSGL01IzBYV735d4S/uvY9PahEa+tO5OMWxE64yszQNJe3p8pVx35Kbee20DbL9FTx8xF36JStoFDtRc4wyWgDi5hZdAuQ93hbiSVtYsyzy72ubRL9cjCWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718882423; c=relaxed/simple;
	bh=zzxoYbe6vBrNYZSrp0NdjygauVB4InNA/Xh9l9NBARQ=;
	h=To:Subject:From:Message-Id:Date; b=fMIm27Qa3BeHZhxLAqUnzlwZcDYjckNKydbDoPx3TKrfSeT+d2zOCZGpuyNYJYFWeUy4Hj19PXbuLG6KwXQkF9XyJ7yf1nymyyGZgaZc9whoq2td6uErUyeuZAhhE45Lhb5n1OXJp+tc0ILd9WwG8Hj8ZmJ85uBPF5UVZyoRiGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZv4LI7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZv4LI7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15F9C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718882422;
	bh=zzxoYbe6vBrNYZSrp0NdjygauVB4InNA/Xh9l9NBARQ=;
	h=To:Subject:From:Date:From;
	b=ZZv4LI7+S8wHz1VQK6v1SdvB4dRTH/YxIdDsfFYFjn2LRcTA/D1Dj1a7dkaWOHBOM
	 I5DEs5qXeIRWKgdHpf0bWB8K20/SRI/FvOyDkOjRbVsYTHtBhJz7yp2+dSaNDOkLmE
	 V9BBWxW0TxZ9u58jOpQqST+5aKvdPzdN5Z1CFnvLI2s4DubJpPFFeAr3y1D68Qos1t
	 JLeBsx/K5XY/RKhr8uQLlHuxWqM1hPvfLjJpiTw2BoSlKZfIDpQ0a8X8AEkhdbZm2E
	 NMTnUqmjpOq8nlLELrJ1Lxyl16zpv9h6t22AZf8fkRpn5w7Tif60dFJEGt3+juhLfx
	 1fkI/5YCo1n2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C145CC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888242277.32403.4440205691678499183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eec17d991362192160409af9bc090a450aa8433f774a555f9fae5288e07212e
Date: Thu, 20 Jun 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718882422
