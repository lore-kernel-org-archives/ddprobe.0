Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB915E96
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCl8Vl7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A31CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703362696;
	bh=hT+8/eM5X0ot9cwn2exL3WWBysqVfwIBu04wfjgKoGU=;
	h=To:Subject:From:Date:From;
	b=nCl8Vl7kaDfERW/guIFs2pIiBVVL6fJiieQVPaD/oSk53cSezcFmqzz0n6p1+ECZ6
	 QTCIhMwMlJt9e4uJSIXa14G1dgFUQqubV6cFbKDmbnbIOvEw8mZmlNaPwhyBEAfoQ6
	 colH8PbUkrsvVX0cDXj40CSnsFOSOrVoNA7XEkxKl1HItXZFapiEgq1PMhiiuSeVN/
	 YgkZbtYoTchL9MPokTQDum/iFgDGk+W3jRcI6AgWQP5K78B8e+opgTlZKLtt8ok/vT
	 kaJ+EvW6UE6HY7PNcbEN+RG/HKUNfcvEMyGNkgBoyHvObyQYULTXRvC6965uOa6VrZ
	 gQ28U8YOeKIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603DEC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170336269638.9744.2061589005844354700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582702814d61178a5d0ef3b8bb2c1704a2257a012f0fe6fc1fe412301ccaa746
Date: Sat, 23 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703362696
