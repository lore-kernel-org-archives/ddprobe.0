Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0A034558
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM5Qg4KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851FBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700162296;
	bh=OrWvvCBr3ADfzaKRxBcHz10ZPJCOvPXGAVGYJnDuEVk=;
	h=To:Subject:From:Date:From;
	b=KM5Qg4KIaTAhv5wHQ4D1SUOCJDMLckdBGKuPTkpFQb8cXt3xqK7tu7dJKAx2Jz5QV
	 MmU7u18z8yrSPgKZTRW64Hl/kXrYKDDfNZLEL1bdbA6ZF2/d0CB5DycnzV/WG3VStx
	 Qv6VIw7vQQ81msdT2IKQrqtgXPdoFOy6pS7KmvBKcTaSzfWVTYe7P6sxH2P4ZAe/SY
	 +Ud02VJ4rN8BOX0JEWZkbMTNdDp4xE1FMdFOXXMLD8co67IAwhQJ4+fjdwdyUnNYfg
	 SvvvtB0ArF+VkUi7AeiMnCkvp5XFFM3p80rUAcmN+K0XTEBVxO/Fj/kVMVDzdoWDVi
	 qyvR2XfLI3LKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C20C47071
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170016229638.14918.8659161422655432733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001d6d3fae38bcb9187951ad2498dd813470b4c075386f3b6e59a92ccf6361c0
Date: Thu, 16 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700162296
