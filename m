Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B707624
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE33C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684548485;
	bh=qE78Rs5a4RTpo8tZcFSt+ZQa6zSuParXn9zPcjGGpVg=;
	h=To:Subject:From:Date:From;
	b=rU3FUVFOx03975oTKbrV6lXtL7/vP8aEl96krXvFG2kJSfFsmbHM8R96jkLI9uaY5
	 Q9sqC9+8h6C+xzQOC30xFGGDbTsZIqy4+pZ2E62YyxKjtln1hWLkLbgVoIPV0GC5Nh
	 PMire1zlAEigIOYNTDE/A6joyy8GSP2EepqbumaiefodxgmPaWjImXyJVG3smgc/an
	 vR80+aQjy+oV8thAipFxV+exeWSFA7ATjdEffu8qITIaqbZdl4Yv8wtpPrqEQIcK2K
	 HPIBDQzDaY1REEmFCors1HQcyZzoU7eN7GEDhYns2d5Kx7N+Xft2rlA0u7rgSwnTpF
	 2vmV/1QhttehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAD6C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454848577.14817.6691128640008471847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c1cb57395e008131934503eb20117535b0b342395df486ac0699cbf443f6c1
Date: Sat, 20 May 2023 02:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684548485
