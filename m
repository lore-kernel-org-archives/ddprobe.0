Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAC6156FB
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKLJHl6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E691C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701098296;
	bh=Ng75SAtCl7L7CjXD/DKfRAP0I1FD6cCJoT0xFQTHE1I=;
	h=To:Subject:From:Date:From;
	b=JKLJHl6ScUIZNX9RbpzQjGNlmQvSsFmtGAo4rGxrdXQohTJVkwTsur+Ipcv6MUCf/
	 XX+mdajUOHv26hrChhhXEXUtyd7UbplOM1Xh1Vs9zFtsQrVp7OfpZ4K/fyS0IXbdd1
	 7uMU1D9kMLKdbpD/IbhWRvY7GC45dm+0JUBZY5v6s83Ctf42N6F+PhbeZy7vTqGbXb
	 BHzgXmQ+KSOU80kHW3a7ixzBiwpIbRC9Ly4cj+flzH6WNVLlTzbJFwCQEM+I9HGD9c
	 NvOPivAerr7/EIEpdNGazlIphwtWp7awTiHAJp1vydLIGA2V7HeEt0Y4auiJiOVQk6
	 +6NKQ/7V8lHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63985C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170109829639.10999.5027727502970146432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2d717a82cdc58ed7fb42687a30246a5644690610707c9b9cfbea4388b21fae
Date: Mon, 27 Nov 2023 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701098296
