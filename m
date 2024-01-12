Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1259117C78
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFjgWPAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9F0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705078696;
	bh=HpWnBQkAo80QS405uUCt8G5Yqhz50t5lB1Bx+qcZSlc=;
	h=To:Subject:From:Date:From;
	b=eFjgWPAwvCKn+ZBH28MyzbCJwXghpsYWPoQvEJlK5S+OvpawlJwGgjm4cKlKUA30H
	 WKO5twIiofC7wKe82qVJcTPG4egGC7dwHmX7S0ttIOYS719+E4QlyK3N6UPCzXO/sz
	 EzeUIpJPGW0OPreB1mV0UHuBH49AXGhT305f7yOG5GkDZjGDMBnmUzmyMgoGLzW7Gm
	 +MTFqDhOTgacYFWP5x+TOKntnQCf9+fNaqv6T+Wa/YA2e891J7U1dRd6fstFJIDGm0
	 CK0Dzpg2U07wEyLDIWWkp+PZoBfM1y4h9t2bwkLdULx8nvSkt25e4/RT7Z9m3JoPQa
	 ju6lvCRpoWaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B8BC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170507869643.4699.17710825324423705981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e80d6ed1aef7375ec28548a4eecfe350ab1241bb601d0377f571501b6c602ad
Date: Fri, 12 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705078696
