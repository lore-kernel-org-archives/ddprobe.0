Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBBA1DA4C
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uffLJv4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802A0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701383896;
	bh=sy0k8WmEvFR3Ga9hRld/8ZpruCprUzGTHUiDjELVNMY=;
	h=To:Subject:From:Date:From;
	b=uffLJv4XEkCgR9oFC8/RNCLfZEPv60qGHwCLCOEhh+6D7cnBLx6wujvNzcDesPetw
	 fTG9TAHGjyFiGeMCFSX2yj4L5NQybsFh0BWoQOhD2fnv4o2hP8J4kxbCrDWCEJDB6i
	 p8D2oRWaQy/baKAz95HWWtxo0RMR5s7142LxfAV7rK3AKMGQr1nDpvEIgpJNsUeJ0a
	 1ouHwAij/NfH6eQ7KDWsU3n/P9V0Nc2A6ZL7meF6LnYNVbmnDxrRaqV3Fkx027bmtJ
	 W27bYuyb+49Cqe/GzeSy8Q+S5nfrPkNr64oAGUuP9FOJ6bELMnlBz244AYDqdGDFjZ
	 flMU/BGHe58BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A82C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138389639.6643.1816158426082402585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ddc01ebed5d67c4eefe1cdbefaf48f06b86fb3fc85e92c7378c60d4a96cc97
Date: Thu, 30 Nov 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701383896
