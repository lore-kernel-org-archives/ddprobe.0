Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435901DE2C9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749372594; cv=none; b=FbB+DoMb1gKsnkYN9nMoeDJgst+/OdfzChM5D606JNI3Nq3m1Jo/ZG5JYUOBS2XhY3AzZL2ZT0XuPuaGn10ljFEFIDk+/J/ftjyreMJpxdQn7F2BuABzL+2yko7jT+MWnf+d2iRHuMkyT72pB5G3Icz9k+NgAb9D+h2kav9vY1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749372594; c=relaxed/simple;
	bh=dCkzl25p7yblPvmvznFtkjSLdNEr4O0LbBpOxYVcXd0=;
	h=To:Subject:From:Message-Id:Date; b=g095vziMXfg/jHaK3BayfijmQYMPP6iUf4/1zw3ZAmkKKtPt1kreqH3THQdDg/CR/7nN3OnBHwWAAM5DIaveVTftLxqKU7DwRZjJ6JMdy15Z7XJX7CD5a+GiKfH4+JApXAoaFQ6uTapj6TGYqaiFazhbMFnTgGki3PdpGV72ZzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWw+M0yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWw+M0yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D95C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749372593;
	bh=dCkzl25p7yblPvmvznFtkjSLdNEr4O0LbBpOxYVcXd0=;
	h=To:Subject:From:Date:From;
	b=NWw+M0yqMZoQvqCNPzkRRe38t4nYLVVOTYbmxrFSn1QIbP5AfhcK8weiIchqfrdCH
	 6uyW+fYbAVByUQbTr17vbal37tCYRqYkTddFNsGGVCa0YnZCjC8CHkUWpPk8+tuUC4
	 bzWc4dVO6Db2TCmZLCmKQb1uWuMHrndd3yKofsXMA8/6fTD+n/3FUInpgR5XKU3cAq
	 CeQh0+O+slX/MSArDRYZzeN7sJmrA2wVvtL8oBdp/PHTf+F25pcodBVNYd4uuFI/rr
	 x82Cuzt3sVpEZnHze4tTpBFC1Fkr9YzEtI4ZPP+In7fK+baDoRUJRJJB1srIZpRj81
	 uELTcs/3Yo9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA9C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937259358.10905.7805603806040715651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a829b560f28480a393d33105db9be7f8dec0aa190c394ac8892606ea18f2163
Date: Sun, 08 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749372593
