Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AF51FAC20
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728584754; cv=none; b=uBbmIy7S2Jz2rEGV6XdBv8DMu7g8K2BDE4n50eA2RayqaLpJxANrrfHOAmwhkrZqJQwgC+iizcZA938Dwb/sh/O5TrJg/MO4HFSZsoFV3q75fefZhYmbRl2TOmWXt9GDtHaFAof17K6AgmSnCkV1rINLeZuDDNbwtkbmLeFIjkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728584754; c=relaxed/simple;
	bh=K2+FID5Bb5AfdYTjFy3mO7jEzir3GWGkXCtsNzvYttY=;
	h=To:Subject:From:Message-Id:Date; b=Mnaae1Tb+i2+bMWzYbPkRzV54/kpMgT54G96JnDy608yXsEnTjqs+Ua08TvyWTwkEMA6MjsbDZ4Bz9vFV/gviAkUSzNvdNbcTM4HHQ57zsoTIx/ZmcjvXPDWnSrbcJPtvqHF0Yi8EhGLI/e2E97zSu+OVQSMjujZdf8gV4hnl2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q13Y1Gqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q13Y1Gqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FAC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728584753;
	bh=K2+FID5Bb5AfdYTjFy3mO7jEzir3GWGkXCtsNzvYttY=;
	h=To:Subject:From:Date:From;
	b=q13Y1Gqat/P0MVeo7sWjF4dLMyNi/Sd3GG9Gzz2WSKpucviMBU0VX1wr1VRJAsk5K
	 jGB0paP3Xjek2xikfpmYfLGqAZnGmPdfLTD/c03gXCeVg3JJLE/2zNx9YTqxudKPKm
	 wHfZJ3BnlveZJw3v6ypWTx8avkMHCWeZL8pcw+esBkdjMpTNavQ0D0RPXHmCRF9lRz
	 BX1fGWXbw0AiJ4OpWL4Y3gApgwiVj7ksHf9dUhukS/W+vvY3RQvVpTcjh46erPkRcO
	 UaGPK/GviPNgXxQgkCwWXUJl8O0vumxV03iLroqGLgzyXfOA0SH7ucgnLaF3P/gqra
	 DELXIouX9M6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6CCFC5F0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858475358.4541.2857794050482653147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77916d91501f1a2408a5701a8d4d093d5892fbb1ea0a22c7a60b4e286da150cf
Date: Thu, 10 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728584753
