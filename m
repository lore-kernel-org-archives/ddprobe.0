Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E78720E7
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02E4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684810385;
	bh=YsiW2nYlolE3j4eMcbmu7m/VmKG8TLHgsI/gq21ZPUs=;
	h=To:Subject:From:Date:From;
	b=h1ySf8g7GGt28ay2ItYw6YWRXuuJSyVTeFxvJl9aT2WDIzGw15Y3xxRz69n16GLOg
	 ZbTnQxFG+pbhi/Tn34MsQqtzvazgCtiqkdmDjjDIXYfINC3+MGQ9/bJPMEyvlD/hfC
	 HUCe6UixFLWntIe65kTZHdvkm06YblNb/LQR0BY9P+3OKW3BK4nRJiIwGF2gRrgOlm
	 dukNCwopPz4713faPGwRHy6dIWVnSx9fT32oCi9KUB8Ze1hwRYf0F5+m4KG4NbWTm0
	 zBwYK7S60NvcoEX4EvdjDye8WQ9yk4cx9XsC8YXKlaZ6CHzHmNhDgl7IADnYbcgBU7
	 wIQLdnM9vA78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A7AC77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168481038578.17284.6079007738565710068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f655d096f45f6d5a6fcc909307dccea209f495468fedc8f830e95c48a183ae91
Date: Tue, 23 May 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684810385
