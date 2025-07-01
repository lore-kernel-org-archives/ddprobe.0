Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386D3275108
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751380194; cv=none; b=AVpWiAg6W3Mpxor6aOlpg3+iLDJlgnWRZRD/Tfb4ZfFbgsiuVXLv5/DqosW1vwnyPnOAMk08xEwHiNZ+PIGlT0WqYyFs4kBuFw4DyCMArfnasU1NHLSS7Kl6vc9E3lawotKm87osACymKYLHsdAki5X5BJK7d0G3mvkQdP1u0Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751380194; c=relaxed/simple;
	bh=sQrTVhUEc/ACvmAV2Ku2srrRkhoSdhLSFqogYhqsKpc=;
	h=To:Subject:From:Message-Id:Date; b=QrkDWROhX6A+LHsrJgWAdAcg57BvXDRqPqZaEOwgYchkJcZx0q6hndFaXKeUSnd1pnarW9v8E8+eQ+gv1NrTx5Uzb83YBJzK45UKhoAEDoGsYUJXMac6URvo1RdrSaFZb/lM0HJn6vyhq9+hOxLNBM4nu15Es5m9rxacGbkoVtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqkGXi0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqkGXi0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9634C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751380193;
	bh=sQrTVhUEc/ACvmAV2Ku2srrRkhoSdhLSFqogYhqsKpc=;
	h=To:Subject:From:Date:From;
	b=EqkGXi0cZnAzOCsYVv+cvy5sXMuhw/6OLA9KN8MvyI81k8eLRu1Uikmg6hi2e+GoU
	 UnjuZ+usMMNSj0+H3unqm3QRyRnWfLfbEk9B17QT57rTgcUr2Y8JiI09sfNCfSLJoC
	 s0g0xZ5q6seCuH2CnP49t085ycHD/rYYh4f/ooCJgHYfMmqP1/7KrS5T34bG9RB9iX
	 hd31Fw4cYbBVYEeb0RTWZNx7o+AoB7itQXu8aas0I1JD/zuJxjdwmo+RkHAkz5JfGS
	 FrM/qUXXHfSdj3Unb8v9ioe7gVkyVr6LaZXYbgHr0GB0+X3FDJr1NHcvWBM3/WiZ/r
	 EfcT9KPMpOODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFFC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138019363.10406.3057464717941151462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e412d3f905a64576244690e95688466f994298a2483745439376ba7ff9c1c69
Date: Tue, 01 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751380193
