Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230471B1D7F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946954; cv=none; b=n5OGTXEfWjLTotTLJoWxmvtaWzvHl2+GEEvYk9oEqLlaOscF5tIWqEPmPfx2memKka7wdt+xHzCWAkyJgxXVKXSFcTYy2FtOj3xK2wvx6vl8Pdaal4NCx+hYbnm4DS+ly5YmOUZ/pkcPt1fT1DlHVf1nQRAONCz/JKy//llU1q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946954; c=relaxed/simple;
	bh=TvRg14CGv4lnjqn/+jmL17uSJmRp4X13rQQGaHftHes=;
	h=To:Subject:From:Message-Id:Date; b=ipSonVu7Hb7J+ZOxbzwe+x3wqTfZ4XuzzzPBhK5DRQk4dK7bU8UGrUI976YybNSOmIfsJbvVOuxJzKVfwiGy+ruXYX1yyNWaID1KKSKLq54Na+baxGLFbzFYNFh/PJGs+jESXcimz4/tC+tdhkuN6hOqfULeAD+Fdu7aTUcrZnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/Yp5Keq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/Yp5Keq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF8DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724946953;
	bh=TvRg14CGv4lnjqn/+jmL17uSJmRp4X13rQQGaHftHes=;
	h=To:Subject:From:Date:From;
	b=E/Yp5KeqqstUYti6X5RTEnT1RwUrd5u17Ah0MAxAh1t0IgYwwmhJRXxP1ADBdRjka
	 dnE0eqwYOHLM9B88O5DwjU33z1A1Cj/bQMLyQmCpHDPCfPQ2RDAz9a/FT8GPVA8Tga
	 lTONu9j9fPOBs5ePdcCgAqzwk7k8sWov4QGqgkBTQxxnopv8Xr373DQijdwD6OWmkM
	 TkVdVpX9gIuLVQo4I6mNqrFBlR9HD3cUzlASD1bSlMl8eDUyd8FDuaGRXvDQ7qMtJb
	 Pe62p6OWaGTx2iERbAL2Hysw1R9KfHVEZtBPSjc2wnRYRIvRCGdeds0qIoRwyIgE3P
	 i4n1CiXmWhhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99517C83F2F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172494695361.17071.2438415166707735662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cc8dbd9269e62a2ef989f7759084791eda3db545f21c4e072dea9ddbe03433
Date: Thu, 29 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724946953
