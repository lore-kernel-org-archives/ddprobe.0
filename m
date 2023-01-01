Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C409015C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC46C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672545687;
	bh=n+B43DmX/VdjthpwfUF9ESOlscAH+5DjblVpI7oeT5U=;
	h=To:Subject:From:Date:From;
	b=n/ZshNTSY0ykAom8AkC0MgOLCI0QM+cPsPLCt8KZ3fS6UFFMqj1OsLVoxszSBUlbJ
	 HlU0/uzxkHhrWpfQilBTJj7bLfftucdj2EqZM7kTn+Ky0QBrzpRT5VzXZdTqI/PXF4
	 6ewQy5itskPEZC5ZwGiKkC4ExI+LETw6nGg88R4LqPfAEeZfub/0kwfkaqMy1lMBNE
	 8jd5qVNz4pu/9Fqai1/4aTYpmcBa71Z25w5MPQk+UmhkvKtKz8sa6FpaLWWcuCcaq5
	 a3BJPPxM08EF3amTWmc3jguZM8dQQLFlsUhaHF9gNGLIG4ZvB/Aib/k5T+Li5kjiDe
	 qhpo2s7xNVWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CA2C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254568739.30256.17283215262902818350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc4b8fc58521d02016bf9b173ff2d9f98551a5d923f6f57e508efe8112e476c
Date: Sun, 01 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672545687
