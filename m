Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FBF2AE99
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747540794; cv=none; b=JHFyGu+m/WOKPr8K44WBj6JvS0OjEHrkbqRdsLl+9W0+XkM8MRHW77DD5zqfumvONbAUWyBscxJckQnMvQHSibxt/57g2yXoH3iUh3Q9FOuR0riPbe9QkLSd6n/FsGBBA6Ab7vKaxaltOsHKIIosm4CZPbst4w+e7gnzXrRKICo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747540794; c=relaxed/simple;
	bh=JUDIdlDZKno/b3JoEa/1tNYt0dcbQdWox2G1m2Ym2Bg=;
	h=To:Subject:From:Message-Id:Date; b=O8E1XGkYTTL0u3nGQQT0akIiWNwS+rR6tJitbfOL+LkcGf+/Uznh6r7Iqt4KfqtZH3s47IcR1i7z3aJohml34iUD46fcPvH05zR1aM4lmMSqH57v5dbVV9yQ8LzSmtf+TrDAzuPHuLYXmnDuSeBRE0D4Qg6SgqWkU5NDvFSFL1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKsQj8SS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKsQj8SS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747540793;
	bh=JUDIdlDZKno/b3JoEa/1tNYt0dcbQdWox2G1m2Ym2Bg=;
	h=To:Subject:From:Date:From;
	b=QKsQj8SS+vxChJ0mjYSX/twVJPviowmuSJCP3eVQW9k/RWskvx1UfotdOFPLaUedo
	 EXNnLj/45uhChmtC4dK2L7lpukputqUBG5DnbAoFQRaEnh9blmBbycN8rdYDq+n5mA
	 YwbgxZN/D0JZ2Bssiuag+J9EZRoqUxIG8wmUiAVaQqTC/ryKAP4Yb2GX7HuzwxdTXE
	 1iNOePwY5de35h3jkPlEjZurn84j9Z3pk7LItqCqZXR8juEFRNKQXTLMSTxdhdlAPN
	 w4dQ60/2hYAduFBxB6E2i9zQoRKBxz3RpmPX8KciWVLiCZDsWpKaLyTaNOiwanPMUp
	 ahhuefUtQHOOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8EC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754079357.15825.700631914076300827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a21a18e9b1cd8e6f8920893404378d5aae10dab6b19db9faff646579315d753
Date: Sun, 18 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747540793
