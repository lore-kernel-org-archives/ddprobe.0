Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3958A32
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL+tQQu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80710C433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705287496;
	bh=PVzy36a1IyHm7SfK9ykTQ4Ar/JMPVR5Z0Wo99z9b2cQ=;
	h=To:Subject:From:Date:From;
	b=SL+tQQu0sk6J5gmdh4iX2XvLp54VH1mGIEV5BggcTaKSsGwQV1dUI1f9bJvGwpw3Q
	 wVhfTcnXTVjzjKa+LI5XVW5ipUU91xRPu9kaTwkkmzNJMp1bQQl4e+VB2pq9Fp6Y+B
	 5zU1A9T7lvbA3lsmNY7rCvi+G3yIpovWr+ol/zNx/edINww4plLq6mXiKIydY6M33p
	 UcQiNHN3BHSOMGz99cO/UTs8xMnj0ju1kvX6T/LOoh2DoCc0M/nwOogzxhJcGVNF8g
	 r1F2Aj3fNxwKhp3IBYqoKygeH3ekP941lwqALFpkaaOTSicFsUvaLywmLA31GBRF+6
	 v31S7HyhqAngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63710C4707B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170528749640.29018.9321245710561146504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f60d45a141577c60847dc569526123560cb37ae97b2eb3f6cc03c90e1ccdeb
Date: Mon, 15 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705287496
