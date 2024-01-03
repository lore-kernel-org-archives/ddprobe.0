Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D621CAA9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k50zHgOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E6D6C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704310096;
	bh=OIu/+CyS5xvVfTcLCmRzCQU12+EucsECxGyweqsbli8=;
	h=To:Subject:From:Date:From;
	b=k50zHgOiVAR8rY5hXWaLycMlX2KUFE0acE/jcR5f5z95NbHOpzvpE/IWJRxh/Fonn
	 EFQ//tDUETdpDf2Qem/UksrupOhzFawS1QKYkwsJ7FXg3sCzP8Gxz96YChIZNgGuD6
	 3BP1WUH3wl68ESZUf1vd9Vcs6Z3ctegNqV7R64VMFfp9t4Es6FCfY4B05LW96TSjJf
	 8stvLUnP7UpoQ/rT9wCdgh00p/o4vG7wrGPTTg6IT6dc1ReAzDakmw1kk/oNPAA29F
	 AGYR5fCCIIghKljau96vhTK6p8L1nfBRyu8OL1t86gywZhiraddWoDmqmYUxRQLrjF
	 nwRSJAHvfIrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69875C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431009640.29627.4442969421971965415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771009c0cfaa026a6dac421d3e947b87c12a5772b7ff7136f857451ca3a74ff5
Date: Wed, 03 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704310096
