Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1A8F45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720578383; cv=none; b=mfMEH9eKLhrEPukBzAAnYk83U6yHKMqvRvE5tfM1pr8JHtximrw9mhAVRK/TUY5a2QR9szckyVUhu7xG8gy2+qO3Vo/dxXPV/H4dQ7KMHp7pCDRDPs9dZk6bEkTZPRI/+ZgrGypYrIr4aIWWacoIg9Qs03ZktS6t3jTIfuhqXKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720578383; c=relaxed/simple;
	bh=mmSJqkPvwP1iHLWpd8kzzNED657+ok2PgaI6M9HZrKo=;
	h=To:Subject:From:Message-Id:Date; b=lhV7d4gTbFRntXQDfRzZc81RAi29WBd/RGB7qgv3AmOEwyssucDPwB3I9yqfOXDte5CLe74Rpd5EEjpQNgZuInbIJPX6+wMx6ZDRSzou4y2trK8JKhSG+eqs8GWa9JtK+63okMolRKDFDthq/VwTR9MFXrPKNnoHLmkDxjeK/bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNYtzGfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNYtzGfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F44C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720578382;
	bh=mmSJqkPvwP1iHLWpd8kzzNED657+ok2PgaI6M9HZrKo=;
	h=To:Subject:From:Date:From;
	b=PNYtzGfq2rEV0ph8dEqNURdC2bBIuzoykT8V7T9ZNwpeMDOHrAfyJRJC6B9ScgJ6a
	 1D41uaOV0ZGgAq1BBoRyZzmpQ2rH2M6hv3yl9todpdl0yGawo7lAuSpF9WtioQ6Hfp
	 gZkQHnxSd3/JNMSRkF/pom2DPDuymQ/NlocoS50gsbj6Z7Ytu1Q/sPgFDT4e/8LU4B
	 RAdVHtLkepqDcoJemuFfdHKtaB6U0UiW6d4zMTWrNpeu10KqW0DpYSR91hks09Gg1C
	 sdxr7P0TwhclHc+7Ry94NWfGNKrW7o1kALd0yc0c+n5OreA6WXPUBxKe/WDM/OPG8m
	 WUjrMeDDQFr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1117C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057838278.8282.1940064038474667263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4cae2eabfafdd296ed124bbda01809068c2b38c66437124cb29c0f21784554b
Date: Wed, 10 Jul 2024 02:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720578382
