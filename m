Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5E88F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BB1BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673559687;
	bh=dg2ohn6LIs10Tvcr56WmvyYB6OseV0beBxDyGriG1lI=;
	h=To:Subject:From:Date:From;
	b=bc2Y2pBukt/47OneXvmp9KMyexwAyNKHq7m106x+45ZXPJ8tDI94j1yDm7CP2rjmg
	 Fex00wUPj6CQNt31KI8ZHhJDbjOj6+8oFVP5FmErbgB4MnZrSZ2/pexcmNIskDBTSv
	 s4TxcDiOULT91hmVwaeD6W6a+A73Sl0TFEedc606pgxGEIyX8MH0AmGquzN2DYU1JF
	 wkBdUlyjrqBmHYrjpFqhzWjTOITjiRoopR0g12qSAbweMeGHoTquy1G40cjtENV0p2
	 GgaKDL0xapQLmpP+lyC4dcVzUwf3FKJz+bQkN6tCdCL6l9srUKNnEvY8U/DslREYS0
	 P1C8dqeDKmfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5C2C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355968742.19876.13353642581416740053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb62d9475d761e16b5fc7941fbde034ffda1eedffd5622ff2dbb56d07555942
Date: Thu, 12 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673559687
