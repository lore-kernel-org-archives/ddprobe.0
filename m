Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59027B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E00AC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672878687;
	bh=pEIzlaoIDTaY0TEVhrP240yQkmnYf4qHkAIli9bAWCE=;
	h=To:Subject:From:Date:From;
	b=D+saRAZpeOlL4raHcIbQsfCRVn6oPny2wbsqT46Oc6lEUv4HzlU/VzrSUeaMfMa/n
	 BXmK9PbSYtu+4JzjOBsVIUcX99gA5gNvXxLbRO9juWq5o+tx9ni7MushXpz/HGik2J
	 3w17rBzidjiWr3sMvNSk7nveSlUOxM2Y6i+8Kcza7j/r4xniyzslUw49Y4Lu5jykvc
	 qcyRYt6XpCO0fn1Yk5qjpJZZUoILq8Gq/XsBh7rLYwCPcMd6QPrYUcYwQLpjdnjAe5
	 bRx+zopoXRtILVBQjMDmtO/Uwh09ccncRH/PmJIbi2t8orV0H1h72c95JK44bk3K28
	 dwTaCjvjKmkWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82AAAC46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287868749.13510.3212147979646985537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9391a00ccc43bd7bd3c4746a18e5abb3ab997cc0151402d9abfba6275f10ce
Date: Thu, 05 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672878687
