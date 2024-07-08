Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFF1FA3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720398383; cv=none; b=p8dVCNBXDMXMRwxMUyOaxQ2ctnP9ZixyznCZJbbh8EIcNHuS51WgpRI6JCHwTHXwmk7V0Q4AcBiEPayjSyI4p/KZDzE6SCkm/YAA45iYG/3uVyATxxj+nKp23r1PPaxiaWAn8/UKVgdCfEuW2wMsyPSv3tfJsiKnZyYC9/BacOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720398383; c=relaxed/simple;
	bh=eS3mRKBO35xYwo5tpDzKQiF2Brs2YQtkBaUQ9bOxezo=;
	h=To:Subject:From:Message-Id:Date; b=TizOdKptIOMZpIktp8UPEeG/JVEwjHypTUy8cmzPwa4Y8tBLvIkPO7eRcjalwwlMeiZV29BkWsE7XXT7CLRfPEaCUxmELd9T8/N9Sr1SG9stEsQCDOqVua+Z97FO+eWJdnO5oUNseXqkEt+5Yx8l5V1/eqN3o/gTCCzfu+9kzso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3PxiWPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3PxiWPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34A2C4AF07
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720398382;
	bh=eS3mRKBO35xYwo5tpDzKQiF2Brs2YQtkBaUQ9bOxezo=;
	h=To:Subject:From:Date:From;
	b=X3PxiWPPU/rbCQxw0iFocQwHc20Xia6wanqLXeFDjS5tAiucw//4w1OdptkNgDN8I
	 pBVcA4f4YFlW28ZKPKVF1E7kkmzIX/xV3sXj+4ZIG8WzVUKpJPmqcqS+3W3STn1shp
	 nw2VQIwg0v6fjxQKrn4KrzAv//lu8PTQaJJ3N2ESC01J7bMR5feWRIWzhMi+BUXkSq
	 2oKJ9D3uQH2NGNUfG/dzuAVKCJ3cJIUsfg1ElKDVSKDWBJqB3K5I6nFoP1WZCI5+Ik
	 PnwHkgNXLN+CONXxNyMOTDL7VO4IjvaMnersgWsLfixpqY1igwTtS+l/xwexkaax5v
	 eHFZtn/YRnN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6C5C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039838281.3377.15160762800427562086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3ba076913bb4085efe8317c53480488536d64ad9a119c942e8b705531777f7
Date: Mon, 08 Jul 2024 00:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720398382
