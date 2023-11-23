Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B465D22069
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf+gNPCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778A4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700741296;
	bh=QUq5vKsgpDLX4SALX5NQtafZbQa2lAYJWkCC9RX54pI=;
	h=To:Subject:From:Date:From;
	b=Pf+gNPCkY45vjlZ4AaFw7nO/z1MCHAOuu4ek56hb66LiTuEqTePbPNBPb9Co4zqZD
	 bAnL+V/vzpIx9FJngNoyohLXjHNO6fIpZts3k1rjY6tAqvsRYf+Ysm/5MsQXT8K9pw
	 hbWuhFmNt1wNL9idkg+GADR1UONZDzJ0Xa3zgRUX6BNRraRoW9iIjg3StjsSfMcYzB
	 sxH0ED2TSwBiEvK96v0aandB8RZPPALpVyBQ0poyHBuW93j/jB3APzbRkO3xiivtXp
	 +L+aM15IxCDNRKmSDNCEpPI7rTY9Z911/sg0O9qURsMJ+f5vrvdBfRDqLW/UFgHgrS
	 XhGkD9I2FBJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBAEC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170074129637.16251.3404946331629668849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27adb99f561c83163029c65815c42dfffbbfe67a853d4c1b1b2d2257421510a
Date: Thu, 23 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700741296
