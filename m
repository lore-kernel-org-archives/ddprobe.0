Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5701314B6C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764922974; cv=none; b=qoCwtsxw29hoehzpNoPjC+4jkdkGteo3X+POJs8dr5fa+I+waqAuO2FtQrJm9cVMJX8kDSNTCriUEqld3noF/2eSU+Yfv4dlJVvPB67cXpHGR5ErPEUc2igYb1YVQ0tB5EjUXN8vTi+gzAx5fC0ri4pSR+XcXJ3KjAgu+8i1ZQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764922974; c=relaxed/simple;
	bh=Mco7jpvYjyxVwj5TIe/xRq+Eytnn/MZGS6u5IxIpRk0=;
	h=To:Subject:From:Message-Id:Date; b=DzoguLCtI/h/JzGqGRo/xQp6nxgmAfqzWfdS3x9SdQ07WaUHDfFmdwNfXvAaHcgodVsPGXufW0ZU9NreOAUGJRZUjJoLO9BEMgbBbxtusuae8z0PS7o7XhFeHpFGIbDjQdErFdZ/mtPtAHZ0AhVAXz1o668Jw2wlGNXBiCmlSsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iafg7k6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iafg7k6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764922973;
	bh=Mco7jpvYjyxVwj5TIe/xRq+Eytnn/MZGS6u5IxIpRk0=;
	h=To:Subject:From:Date:From;
	b=iafg7k6xztnDxnBXphsx4iKIh+GmiYlHgF0CIKDG4loI3jKJGSpFiMVU+ESNVLI8y
	 85BZvyOHbcafxy8dI95mr62hdXHurVrea7lUkSl6S3ERU6bms0Lh3SGBSxnh3hSS54
	 68mUmf/6dCq9tAkefP2p+PBaI+CH5c3eojh+P/EXacfEJRU6K78gY88IO7uhCkOn/R
	 VE9tI+7EL5L49DrtwsURilUdw3FonagjonpWKegAUB3Wex/4380MTFbH1IUJaurK3u
	 Cw44GYi+FykFz7BjiZPqffAc47RH2UAZCU15ZyTMdMOiS39/VqTGg51dnYoXvUrZ98
	 hxadCnjGXuyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBAD2E038
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492297359.17911.16191636917017584037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5baab5188872678b6a11858b0c39eb67f5e816d7ef012b266d1c08dc7429f5
Date: Fri, 05 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764922973
