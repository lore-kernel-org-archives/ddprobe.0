Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28DA33A6E9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774382093; cv=none; b=JJVkNKSa/rJHjd7Umg/OMijaiOHocDH17d7zgoHYWiKRwYWMUeBDf+WdfcvhQzYpu7wOALzbbTaZtbR3QRiWr+pbHyWe6LecovmuK1wWZjAU6UAvXMOD/DvDvvX++hOcFrnkNXqYnM2Mj/46XbddDBo3k/s91u+kB7dGZk1evlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774382093; c=relaxed/simple;
	bh=TkYagsMjM6JvUtEarvzBcOloI/dU2Sn4FLOYuY2U7F4=;
	h=To:Subject:From:Message-Id:Date; b=EtqxWJzB6fHDUtLT87ouYIzo6IDaH9Lc2FaG3NsoJn9TxHxzCV2RAeHcW5fvyOx6Nc94Ma84yBtvIb8sYjYyn/a0cg7DUhWAZrHUTJ9YaWD2JCW6ivlbntaHJutRo2ydtXkrnzSxYNQ9sBD36wOdRGgNEcDuxPuLKlLKrcpcnHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqGTLYp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqGTLYp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CFCC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774382093;
	bh=TkYagsMjM6JvUtEarvzBcOloI/dU2Sn4FLOYuY2U7F4=;
	h=To:Subject:From:Date:From;
	b=OqGTLYp4z/pXvGuhVh/Y6hqtPEcqoeEXdorNkgp1YG1WeBCp9riW4vU5M3G8M4yQO
	 feLlcvgW5LmNgV/W2d95Imez4YmTPKO/THq4vUCIwP9WJ91SmoRwE8N1nb7pzpWMAC
	 eGViwOFafwkF+yoL6VZayJvQmlfcHCppty8gHMd73ceIEfAFu4Zmk4KyBt4xQF23m+
	 y7eHCCYGmo/wSIMfPVnt0IWIQlOrHxxc5u/gpR3KnsB5sit9aDNXwVIXj+MxbZY9B5
	 ubAVGT2EbqdlgK6pKoS/zhsIOaci6y30msIDSvFAtZOxg24nBeejGer+tWVFRxUb7i
	 UDSxAKbhXBBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3DFEC109
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438209360.18946.1621067913418422890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06237bb6f45417e9ff5d4668a438d6b9e8a0f38f23924fa4ce454e56f49aa4d6
Date: Tue, 24 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774382093
