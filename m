Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903963A0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p63evm4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863DBC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704954496;
	bh=Wy2cJ92yi3l1+TuZKR7dzyGXYvymjVWI53SbQ2A3hl0=;
	h=To:Subject:From:Date:From;
	b=p63evm4D/6pQewuz9eqjH5/sK0j4vvhuDc5hZLyGG1skRlOxDsO8iHQKHdX8QVe5X
	 Tf2Poj5qddEvgZzLIBRd+hWzbVDFTFYrWawzhfhW3BtiMBXdo8AnTIOMOzaR401i1h
	 m2+vGPk0TwSihteuFlzGkJ0UaETMTTGJk3FP8BMKW3gFRjLkEZsIB1E46S4Gf+x7bX
	 +v2tGB9armPqkzKaSLMjl++eXUQtmmU3Oe89r+F0AvrnIPfM58iYTECzpqNEPT9+b0
	 4H8jp/oDIC6b9kF//LNOiHA9d0KzSenhrhGO6gjUsX9Zm0fGklUVmxHGKjwmHfTZbn
	 qpv8ejD+KgbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6735AC4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170495449641.14922.4741669875177148497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d781d8c519c539e3ad52f4955daf4182579be6686c6bc8652aeca8f38b634441
Date: Thu, 11 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704954496
