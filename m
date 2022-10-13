Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA8D612F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821A7C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665619253;
	bh=JrlGyPnf5z3QBJ+F5C3B+3SXnCOdMaQSinYT6cSpBlg=;
	h=To:Subject:From:Date:From;
	b=XPtrxGgLCnqSaddHK9u0/j78LqT0KvaBcfZUcDwlJA0QoiuyrXA09lr1UXoNJfT43
	 ZnC7uwmlTXWs/bSgIGEFbhIhSg7FE8MWYLKSpTrU/vakwnmr+bZD5C7iRNnfkO/Msz
	 /GIj6CIQ6GJI28SRXm9XgCvH+OwsYxeMFLvW/y5V8CucCI8+mf+g7aHr+V4jZilJei
	 HZMcHxP2FbIJ2Z3z4HFsSoRKsz4cKf2NPoPLfsqUs/iVtgvYlMl4WN6cCHVPom+07d
	 Sa15Vci6SIdZS+A+1w7waW+IMdfjKvfHHtaJHB0P1iTsmexoO4bP0+7uW86FdyDJMk
	 SwJfJFoAyOPLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6425DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561925337.14982.17600310519596102330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0529d995ba230c47af7047544485a87a477cdc8144d87c4696a76f0f2b74f86a
Date: Thu, 13 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665619253
