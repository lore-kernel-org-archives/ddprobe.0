Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0722C16CD33
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755235794; cv=none; b=MTWBB+97XLGImr2lWxKI7Lape1nR9XVqcFYUTAaVaAJRDqWmJuRme4wukRNPa9KPgCnazxjzq8SIFDkb/adVPgo2cCH4q1/minI7pKDb+yitaKsbuNwcqelRPmWPbcyjkJHBZDc+47+5Qx7rGEUFgBpsoETIza5/qvuU3/L2Qn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755235794; c=relaxed/simple;
	bh=QkHQ4gRO7W52Shaqi74zXS73BrLM+aoeIu4M0uQ9H6w=;
	h=To:Subject:From:Message-Id:Date; b=h/REhLTqAR05HRCIt80W8pp5HSnUIUzwvecGH/2u+sZ+XxDShugAYecYs8joAEHTqUMjmCF8p2bJcSaxeVcAKBwnvMaeVdOZZkSlyi2OLNgGB8tQw9BVQobYOS65vMEcVmdbdn57ulsIeIGiiL2Xei4Yv5wsEM/KJkOIw2cVMJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI2C2duU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI2C2duU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8E3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755235793;
	bh=QkHQ4gRO7W52Shaqi74zXS73BrLM+aoeIu4M0uQ9H6w=;
	h=To:Subject:From:Date:From;
	b=LI2C2duUixTx5tMI4lGJlUk3NcVulez4+6nRGIh15zHTR89bfZ0swlWCJupWU0Grf
	 KVqRclQc9SwIg5qel1QAVdqxHriokjZLqtwHBfPrmHG5Juwcm9PwmYaC2DHe8fC1gG
	 Uajqtv/N/RIFHIqdEUDOpebG+Fp9mt6NoneARE6LXRC9OJMR+M3ip4D3sxzFTT08Fu
	 kZwUgaBV6tQ+PtJrLonyRFCkpyD4gvFF5B/mjGVwu7YJWHzbqJcOCiVNFtp+3Yj+T1
	 9nfhT562aZoFihnk+odkmmR2vg4LGPGQl5q9DDs1W+H9XOqApUuCk/+3JdqtTlHme2
	 uco3uej4Obn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94BCA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523579358.4676.3389782308786757803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052e0971fc4de99a112d077201f78720d0c30a39dd4e2b197de53e383ab79254
Date: Fri, 15 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755235793
