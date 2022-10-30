Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD563191
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCCBC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667115054;
	bh=jO7+PY3/QFoMMKrjzgO9SUa5KJ75Z7Lz6+I6G1D8bDE=;
	h=To:Subject:From:Date:From;
	b=AyJHTodaPbBW0D/SyxncpWfH/NN6CC4WQwPKAgxntGa1xxS6DUdSLoIxiNXLXJ2zN
	 DH3kUydFc/WAHY7R2afd6ohMJSYG9agBWFqJFgkwuDfS5xgsCGj2i408lDhmMc9wGE
	 oEvM6aV+D7+OXdfghA8Plj5T1yeKP6Z4qWt7hjoUqf4oqcLa5IJhoOpjSKJfpoAc4Q
	 Uaa37hdkWzXWToMQFI9L2Odk3ugc3+hSThUWWWVV5J9jBxVGK7KNmKjX0uryx/9JVC
	 93ePXTAFTeaDXD3jNBtnie59CTjL1PunJKIymCheZ1RwBsru9AgkbGcrhHIzAVjT0E
	 f2nz46vLjQTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BE9C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711505433.16681.18259633321866491980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4046d2da045721dbd7f9a85c0269e3f4d4bba5f1a28a1ae347decaef4e73be
Date: Sun, 30 Oct 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667115054
