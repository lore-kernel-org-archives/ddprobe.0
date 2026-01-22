Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3E731814F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769121834; cv=none; b=EZDGp7USQZmIyqBFnout8rhOGcxaVbp03o2kjcJxBk4x6h235Nc+DiTUoGcPVw6JAeIrxtyzH0aNWP7/t/Oq523zSCb3QFUI3SuoxK48YxxYDs4dTU4k3H9/0w/MEG/S9jRnXCY0twJAE8uDI85feleyrBgzZP+dho5dqdMROyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769121834; c=relaxed/simple;
	bh=h8XiF3oNwjlcICsWq8+a1td+IDgF8ogYSfhQa1xDJac=;
	h=To:Subject:From:Message-Id:Date; b=ocdGF4Mv3Zmho8kusUlEtiVSCbwlGODKv0tcNVgAPC2/JwkX/wRTm6+EEug6NJMkNnG2R2cB2bQYrychy1c5QLypExM+9Wk0EQw8ZJ6dKDhiHh6Zx2kzktVL+F+sw+XkGYCyZAPWn3vsQIcTu2u0WH4IWO0jQq60wNpN9ASEVD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JROuRBYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JROuRBYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7402C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769121833;
	bh=h8XiF3oNwjlcICsWq8+a1td+IDgF8ogYSfhQa1xDJac=;
	h=To:Subject:From:Date:From;
	b=JROuRBYAwuGBPN9a34Ap2NC/t/80byjpAmmbUu1OkTCBAI2eCcR8qVtrGKMXM4WXE
	 H2BFTxYpj+JqhQWtdmijvTwUDLqEfrcU3NX4IMKPBpVtvL6k2Fxuk44lq6Xw/a5OEn
	 SUFytw3wXtAuxvJjvKIMZu0gz4X8EbzvQ2BoHwadr9+Ugozpa7rwe7UtUY5QaYQa0x
	 E6kACFIdLaIvGdGbA+e+jdXubGpAPBTKFu9BtIApGVQcWYsxNayUzMfw4lfOvx0qLy
	 onkzr1iLCjCE04LT6kQqq5o4jQ18/08PYYZwT4TXD6W9H/sKfLxA2HgPwhQDHz7xws
	 kX9rQAbR/yVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C21D6CFAA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912183358.1743.14290974333529828765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955d6f24263d24a5251a011dc683c21138ec860f7bbcdc2d31037ba9dce903de
Date: Thu, 22 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769121833
