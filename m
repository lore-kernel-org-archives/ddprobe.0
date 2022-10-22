Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B451929AD
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6813AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666432253;
	bh=2Z5MsRMsGxHuCUWa92fyIQVs+xWk/F7x6QubTvfZSVM=;
	h=To:Subject:From:Date:From;
	b=l0ofRr5KtUmonBCsM3bMydpLxQ3ILyTo1g4gg2va3w8B59xVfUd+2N0c5w55QGQRr
	 2sdnq+tk4/D5lkQdxEoDFdBv1aQuYiOOihdi9aCOSZO+jdyVmLcyIlJJi2+9GCLNrU
	 53cjNGQX8KUvXkMDX3GpjbJf2hCBQyYdDk5wns9Tvi8rtxaVQzxGvqpFjWx4+9enez
	 Ge9xay9Aw9Ad12xiSnPLPuaVs8tdZ2IlfsNMliFzSFW0kC1EtxGNyecyFTaop1Gytu
	 qZBVOCcTCrvkU4KFuJkB2iNqyOXy05pogNwS3n9Q8OMKSkUcPO2Ct56phz1SXeJRcu
	 QPXjS8cbjQF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C70C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643225332.14719.2877012975769654263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31acb31a28848de583c82065713c3bc4bbf30e2acce634348b842bb752744317
Date: Sat, 22 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666432253
