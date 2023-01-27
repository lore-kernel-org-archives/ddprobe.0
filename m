Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4326C3205
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC95C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674836585;
	bh=agTWFmdM+F3eqkKk3ffm2fKKtV1DOUyNCOdnzqd0MRQ=;
	h=To:Subject:From:Date:From;
	b=bsoWDHoMvOWJp67fnqLkOygc1MHvcTA09P3d1zmgc/Hs9kdFcKSLAaW3/mb5foxu+
	 eeLlMifbdvm1wy2QJXT7NL3I6/xYkEfe8obw253diJh6Qgp0U5tGPsZbyb/CMgnz4i
	 zV7ZnybZGiohQORqg6nzWv4FFDBGwHU0AzO/bqxumEt1b2LsryN/81zr0TS3of3BMA
	 N1JfKq0XZbZt5QPwBxYQg1cYHO7uPWgOc2gz9AdnjRMKWOQ37GkNsM3v2bylKaPwHM
	 ZQWDoS3EBHXbFtmFUX2C+1GyaiD1Hw1wUWjYUnGJPk1S1US71/d+iJjbUJ/Sd2b4ov
	 hetrF7J1iDbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2AAC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483658577.2242.5300474645268678072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbe8008f1a8b252230a2f06e7d9ce97383442b48b4ea1079195b63e96dcb4d4
Date: Fri, 27 Jan 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674836585
