Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4925233936B
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786732234; cv=none; b=cpBoRpMXVu/0tVvxf8/WPS4V7Vni+9SvXBWEAC3jWMOEPiQu6c8wUBbnT0o6zEdMZlEiCxJgXwHGppef0fTjXcBGFqsaaXJvAzgXg5TXvckQuqc5cQH7wO9lrm3WYUkpa5P9wzmW7XBAUmC1DpeHZZpIaYDwf1F3JVa95EMzSKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786732234; c=relaxed/simple;
	bh=Ykn2vGwg5XVGqr1K3ECJsRiD3U0/XvUv7HIU8wnevsk=;
	h=To:Subject:From:Message-Id:Date; b=Fa+5uzxgzjpJuGtPy4Ge273cy6Ftcn4jEW1mzYKsgJbh0BYhPQICKnEOf6Iyw6mKnwg2sZdbev+uUfe3PynkzZO7cw4ZbG2PlNKhP7V1QlxhWAJ05b/IRGq3UvB2P5zTeelmYuT2Am4pt46OfKEvcUiDKEWlKX1zP/vHo8TX7U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coqdijS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coqdijS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786732233;
	bh=Ykn2vGwg5XVGqr1K3ECJsRiD3U0/XvUv7HIU8wnevsk=;
	h=To:Subject:From:Date:From;
	b=coqdijS/4IPcVaSaSEl7cBsZyc7KilA7s/pns/Mw5MIiYd8C0n08+D3JHMgmNpFy4
	 CtS2iIs502K1lc/gSj0ySp+BfxvyxKwcCZDxM0HL+aqZloxZEvmNL5LQ3hx6nreDSu
	 bRTJnqnJMMWrh5HRsNYKadv6EXCJ/KxIhEg089mTAbJLr7AgonlHRaNpnKH/9itlmp
	 5qGq7T7boFwjk8sDqEEb9IoOOHzsWsZu7QTgqcbUHL4VgqcNBS6HojpblcmMCEniet
	 JrwjCkdlvY2iY1KlLaI96y6Kyq03wXmjfiFGNj7FpU0plK07s9Loe5kxYgMYn+ehHZ
	 vX6RjpJKEvtLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC312C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673223369.12515.9166716072369745994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28502e47374c371b3e3dc18c516a9ad3bce06b1d0a09f28956eafd06f4e3a81
Date: Fri, 14 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786732233
