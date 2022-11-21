Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD467E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4A6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669016454;
	bh=dhBnNbpzUetuTln993QIyD+7K9eTapMvQgDcbB20bO0=;
	h=To:Subject:From:Date:From;
	b=rknqnphVNLlgMDpDJ5LJ6w8S1wW7qDOD2QbwUP5g5lfDJIUY1BdUtv4v8qYrMD/Sh
	 +RKveVeQHtLiDNA3RqSgtka2pFxMzEFKTNl9BbGbRoi1uipS4NrxL4O0Qa4Bf0AVh/
	 GNMM2esdaiT3o6tRYQBmeAfxkHkijsg9soHxyvME36LSLwdIl1mF7d4jPefJA7MHuA
	 qeDVWwVZBJwOO1dJolm7Y1CJ0nHcEJGDZYPX+sSBEZrjmH0vblQ02aR2DQ4XcndHxk
	 QkCbesX1NuWSrChQWENHJJZxBuFD4SeU3mjow2rVuR3S4PzTwOpDJdsx8GZifB4Wzy
	 jdBEsm8+iNU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BF9C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901645433.31837.2908315410583604468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cb7e55721e626be5ec3e5b46621a0a0251feb9b1c1886bd85125dd36c3ac25
Date: Mon, 21 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669016454
