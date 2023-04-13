Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B137E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F76C433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681372025;
	bh=xqIEXfuUDVdBojvsBfC/NJ6qPoKOnCSZ6YW3BTaI4s8=;
	h=To:Subject:From:Date:From;
	b=HJfSSmAGsSwokm2F4IYGjHriQz8UEZbH/7L+LCav6/RFzJ8DcWLfu3QO9xsBlVy+w
	 oZc2lJa2DmyzkMPoRDAgn5U/EnIv4Nu6LYsBNMKBjywQj4JD7+Oft5Yn33GlxWux1q
	 dM3pe+Y6+YbZ2J+HQy3M0A090BeAKnr0c+6Rw6x6oQjrzcd7j5zHJLYZXZrwQnluX8
	 dvr3IEtF7RrvPBkrYZw2wJxMYC0MBX6W/I0vYiMwBTchuHInfD2furPqAN2qYPD/4p
	 PocW5g0hJpDJ+uiq554pSF3BV/1klrD2PCCSXMc5WuCrZoHXPlqBGPa/Cufa2p62hF
	 VWmsr/Bw5XrxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79D7C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168137202573.8030.12529945734567507807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce92ade9553bf61af33433d7142d9059db6819b871def40177499c41dc625db
Date: Thu, 13 Apr 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681372025
