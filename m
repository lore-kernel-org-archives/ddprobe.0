Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A1E3D7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DahEJt1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851CAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703415496;
	bh=RKXsg9rjvjXx8oaQbwXXWMaHACyC6fdATYTRNoWP1a4=;
	h=To:Subject:From:Date:From;
	b=DahEJt1HnWFsgJev28/ifCXoLDVoJW/PgAMvi85i2UmKQe4yI0bpfpkLGwCtyKqUj
	 JOdBjSUV8kxeoMxrqu6GpKNMBLZ5z4+HVh87JAKKboc/ZcbuYKXQOoBUhEPXRf2+1u
	 zgg1O7CNkwlQOYRxRJcb9XP8SwBdiDp/MOvd56eg3J3Y4DpdjLcalzb7/lbpPtAvcl
	 7FhI47loECs/3+6Xe5y7h6RKujuoJ4jrJbmIJlmMgzlaYz8yBlZaySSAdufAZxISTF
	 hIFXlSEDXJm7lnVPSayf3P6KgHOXe+3cn9YTyfTTlrIythRBXj1hsKLh8d8XX+wsC0
	 aC3GXAfKtLoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A80C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170341549640.22458.5292128477248187255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7093ea0022ceb39dba4089c1d533206b031dd0a6c4ae642a83f3039753bb42a
Date: Sun, 24 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703415496
