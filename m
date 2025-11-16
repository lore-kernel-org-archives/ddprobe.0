Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5BC20C00A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763325714; cv=none; b=T+//Pfr2W3ufnEmkiu+JkbnN6UNzQZ1LWux2TAQyGxShm/aeWo4NcXN4KZHSeUwlY3NNLuVXaNI/M4CEs1Lei/ZZXDL+BmdjoPI3E1KgnlReeFZSHVmj93iCQ+vgvR0jXuzF1sEp0UyAW3hrBkEg5lZqj8qGe3/biRuGXoW0diA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763325714; c=relaxed/simple;
	bh=rDzZksyahRZHQo3qlTJkkS3210TU1T7D5cqmdBxUtp0=;
	h=To:Subject:From:Message-Id:Date; b=H8j6j9uc8jcwhu/aGMt3NgVFKkj1bFbwgZpPYuyjNaeBXOtz5RZyaAKVwLjcvTu8MJYMWYXmcYXKnsT/s9+yHbMbUEIBK7XSkuX5q0ouW3tdk/WrFS7NgWhePo2aQiWDJrRrYgQ+axTR/GRV3AuA1q6etz2iedvgKKRrOaMBi+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlPtGz8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlPtGz8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F45C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763325713;
	bh=rDzZksyahRZHQo3qlTJkkS3210TU1T7D5cqmdBxUtp0=;
	h=To:Subject:From:Date:From;
	b=HlPtGz8SEJFoeQ7fx2Bts9xqxW+6ziirfKUc3hcTbxnaw5YNdJzxJQP9XtHHHyGAM
	 opVuFAxpJaZcGnsCEe7DGsyNuTDNA3pAfOq6L60kebKHA69WNeVhxB7zSBrs9eePs1
	 SVhO+4tcArRSEFM3H51BqkGpNAdVS6sltMa0dPK/6UyeeZZ5LKlda7ZWW9r4xXNkeS
	 7bWsREEUdxJLsV5jRGb9RDyvZgFqMuxEtAr9HtEm1p9RCKgzjnQaz3SKJgWtg8dLj2
	 lBfx3KOzk0LbBoRR4vHf1noploom1wlcps6wyRlY5Pt9VevinrIMbBUdnaa3xrLjg0
	 nHPCPfeMYO0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968CFCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332571358.9911.970441843814213950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06589f1518c49f51aaf364eeb37ae367b1d095b4b06150f1a979fae6ea46b978
Date: Sun, 16 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763325713
