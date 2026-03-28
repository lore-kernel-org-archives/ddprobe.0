Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA3639280C
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774714494; cv=none; b=lJ6zAyCF9eeQwHbXvNx5kHwALmjvz32OWuyJ0aUGOKFlCH9dHW9V8oCy/LEPiLlvBA+LG5waz2DHbvEfxba9icT5ms3K4iumePjMq5vn9eNdvg3WRgBZPJd+cTBKF7lmXfJLkZhjvBOBCLXO4Dbry5e0oZhc/QW7Z0W0WA7NFXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774714494; c=relaxed/simple;
	bh=hyeIfloP/MtxLkalxYHX2cQ4S7qbpnIeMQKM0pJwGL8=;
	h=To:Subject:From:Message-Id:Date; b=lYXa4tekOCr/gvbpivn8+tCFwY1VHUViEt9MHv+U+vmfBo8xi2LX35TbuvBgqUj1GBKQQ3Gmjt47xRpXnszfyIroknfKF0JG6gAFqDBodGkohN5c9Yx9l4IG4VFZiLI4kPE8dJQePAJu7cikXpJ9QH99JSsk9GQCDbOTVxOdLLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JigUOGWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JigUOGWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9347C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774714493;
	bh=hyeIfloP/MtxLkalxYHX2cQ4S7qbpnIeMQKM0pJwGL8=;
	h=To:Subject:From:Date:From;
	b=JigUOGWPArNjBAmfBjKNwGrewEaKcXY+8IY8nND7jmKRCAvdWO7EFidpFZQ/Dtp4G
	 eKvY3x+Wr1/mbkZSnmCcS0tfw/kojzNQgw7d3ZNVQdQ20Oor/8Cv8Nu2aXeHIiJ/Mu
	 hwbeoPIviW0GGqiUupu9C3Q2cz9b9a3PvhG0i3EGm490ljgx8gqA2h4NgwAynwpYkJ
	 gl1XwOXh6GRfGRIzhgD+q8Yk2j/PFHfx9uChlYx32p2xGcXi/Ovto0aVxDTW6/OMS0
	 5I+ema3nLYSnCABdpD9knMaLtgg8rQDUzCeP0dAVwdMaB482Uz008uq1QETAcgD+UT
	 1erH4mxRxK/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B810F3DEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471449358.13998.9342095529779962266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1b768b242264327f6c3f191775240404fbe7e3268883001ff09095b3d6c70a
Date: Sat, 28 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774714493
