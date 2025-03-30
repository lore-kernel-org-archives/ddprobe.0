Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F1D17CA1B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743358795; cv=none; b=K1wDI9b5Bm4lqhRjqr3w86QMggTts8hEi01xwziMRuOZtECgwxL2rzmDPgKZVG6hvD/KlQyn3c9KxbAqeJLA5LqfWAW64epXLYFkYNT3rWJOZSpGggYegtH9OL6kQR8Yk8R3NoNurpvj2C985KB7bDv0BFz4XbSN5xC9h4QBDuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743358795; c=relaxed/simple;
	bh=RVt6IF64VUqY6QX7X+DUh7y3eDEXEJ1ggrDIE1Mvaiw=;
	h=To:Subject:From:Message-Id:Date; b=aUMkvGEWTLj75SSR/4i1LZj8gUhQBkjxqNzbZbe4UsKfJ1DNui+nZZ74gAhkr1c7I2tBeWl7g9rNmeHPnykinrTQzi8wcWM9wLyJWaUwXjA2V3lDMACHcQldLYDGpeaVi5X+CGLbQeFKCGKe8qZ96jqlJJbRoCzVNNaxypSKWr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMgp8gHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMgp8gHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743358793;
	bh=RVt6IF64VUqY6QX7X+DUh7y3eDEXEJ1ggrDIE1Mvaiw=;
	h=To:Subject:From:Date:From;
	b=vMgp8gHDzx2D0uC0dz/BhyaGaraAYY9NSGJiBlaPVmZWH9pYVNIqw3fLw2yvbP+Ah
	 KY81QFnJb2P6SFMxLOFYh/nX35ezmnTP43qwuH+qMcUnO9dOO/CKyEZ/uuMVC2vLvG
	 K3ZuD0WP4aACYHfjb6xIHqyorSzDVCDiNsXgL44Nrjxab9nSMVE6jq9Hc+PtXW4a3k
	 O5lojIF2B5giocIWKvZP4c7A/ZQXGV7A6bd9Gwwku28EXTx3s8CQTny0srW76Wshz5
	 j8dxKovGi9s5v/LohzerLYrpxK6SY5ujnBDFuupROosHN6gELR+vlfeszRwMV10UxR
	 CAzs0dRv9fI/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CDC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335879358.32500.10337714552876978343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a17c743eb569e9b3769cbc937125d0b522955b89a076c664ecf42c69d30ea47
Date: Sun, 30 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743358793
