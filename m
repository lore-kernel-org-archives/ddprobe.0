Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B892F4315
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749730793; cv=none; b=BF6b1lWzZCt9A6J5P9DzyALT4jWGQ5SM0M/a68/87pX6j+w6f9fdSlV8UJTfqoxXt5ESDvcREV7+QjOP5WhbK8fWp9JAOhJ5vBiShkxw+XeWFcdmlVYAvvm4+/zW6dzabap+VgIN9XScPeNShq1f6dkhhSe1CwDKo56COmckXb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749730793; c=relaxed/simple;
	bh=ueVLXrMdHd9zci2qEKn6giiZxdnMyWdhOZwgfWfssqc=;
	h=To:Subject:From:Message-Id:Date; b=Sc4UmMB7zgTRTSkeVfDl1Ao5z8dDvSIp5dw6p40fyLCmt7PppRvZN97NnYf+LoKKDFDHFU7SwibYwtlqjx4aPAZuM3Lqd2Ass5ueHv8uuPrQi6gTP5pBk7+x6aCRfErtZf5tBMO/nMSWKs/ZlyuMaCle7QM/ayIgVwgt4m+8JeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ofg5MFq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ofg5MFq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A14C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749730793;
	bh=ueVLXrMdHd9zci2qEKn6giiZxdnMyWdhOZwgfWfssqc=;
	h=To:Subject:From:Date:From;
	b=Ofg5MFq/M1Pq4zosYgiVvQxG4r67vQ25rU/eZXuEVHtM2tLJM3DfrwOhQHVmPNu+V
	 u9pFf0DUzBOftTx9Z3XdKPHsM8QiF+f6n9fe1Ly4Cb/uQeTU8uLW+/OR/+oYtFxeBG
	 h7b/JKwsPcp3hTMpCJfVHzaEscY2Z4Oa4I8QT4/652MV7ftADW3PMBYowJGth8c7iJ
	 dgh0XHAOuvWSrBglHGQhYNix9/I5cYceBRWCK4pq1VH4lZlxSZlH2AL90gx79hl3iM
	 1/KXdoL9NvQFx8RydRlkgsYt0djhDrUoBeDDoXzvb4GeHCJhlGPiB1C/6IOAd2rA0o
	 eDB2WDH6FXCtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DBC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973079358.11460.1628812887245608947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474a4dad8ae0ae70eab238742b4d97ee3d6e402a00e714e7facb54580f6dd57d
Date: Thu, 12 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749730793
