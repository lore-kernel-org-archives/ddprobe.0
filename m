Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A9EC2D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708864696; cv=none; b=urJm9gX8P7sFlC/vh8hvoi9OZ5wIyHTBaQqWShdWYvysPQTbHLSh2KgtVnZ7OdCP8Yb3sXJHPnopvg5e2LuSYcbX2W/nPIwXAZmGrGY7J5delYQZhz8kv3+WVODOJjFG+aNb2NP+BSyzgq9B/soQZAAVzYGldzloWGrU0lVnpSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708864696; c=relaxed/simple;
	bh=+K81WFbwEJjf3LOFuEtSYq/hXd3GA7WjFxZKbr1C6Mw=;
	h=To:Subject:From:Message-Id:Date; b=ubpKzkB1s0CGf84tFbEZLS6yyF7qeXGMx5wKDJ+5I7p7KER93NcTKgJrwgKYZUdEDngOrbfwUbQAu+paq7d4ZztepEWa6CPrd7gPuazJ/rwXpeXafGgv3bBv6cvhQkaXXhyhNyF5WNyqMS0Es5aY2xjuEhN5qJMqfSsSfBoc9ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcUUsW6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcUUsW6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E7EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708864696;
	bh=+K81WFbwEJjf3LOFuEtSYq/hXd3GA7WjFxZKbr1C6Mw=;
	h=To:Subject:From:Date:From;
	b=RcUUsW6lACC4ErnP09fzhi73L6O44XvpTKkkt7QdGQ9qU4eKrybl5uu66SPrQI2u1
	 pxZmk5bh3myL8HNkfskUmS/4ZX3LhH0JWHPo+JQJHlTiKOR+fzv36AyVMyKGM/ytDY
	 ObtGvFcEPMwJmWEUGUtYPDnVqpjMNLJMV6VQyFSzPa6jrUsQ5s8KEqLElnzm2lb8Yz
	 ArAWynXyZJ/VpRN/UHBjhF24iy/hahy19vN7mFrmM3AxCoFBF1A3NwHJqx/uths5RH
	 eV8mWCAQF+lD4cQGbnfzHkDD6PrMns7wdWtKeHfmiT9RV14c2fjY9r+9zePZoWoMZH
	 btaDT2kfgROJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B232C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170886469636.4249.546814424118021957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c6ba89a3b7a319f1a2d0a7c480880ba6740608c0e9f1e92b39a37d4c5ee5df
Date: Sun, 25 Feb 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708864696
