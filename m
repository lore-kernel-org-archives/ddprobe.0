Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B634A53A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D019C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661785852;
	bh=qXgjc8Tij4dlmhyJa7eRNc9P2KvWJzIL5pY8p5fRkVc=;
	h=To:Subject:From:Date:From;
	b=bmBOLWRNgChh7p8jzIz/BTXUYmKU9fiG+wTZLqCNT5zC8P14gTdAK3BPNGbPsttaV
	 MVe9s1R02k9xEYwELmfGxWmZuZl5c3CWiqs9XKBXiYtU8pvOMIYznsffAZMiVz6J2j
	 jllm8ap9ISG2NVy6aKz16y7hYDWzpFoyRUaR0zuUXZF5puXDoRXCB6p4Sah++b0ktJ
	 VEGPFlxn8njHfjNN+8c8jADKrVvMEbR3sMREvzhm47tSgjddPeuxPuiuqw7YwfPmqo
	 gubYJ639CYkGG8KQTx9msEhvYLTmROTP8Aw/VYcnaWUVDN0KT2/uJCx5BuHdNMtQKn
	 7Z3csRZa7H5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529CFECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178585233.31965.9735675440065723580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e015f4a95c6ecb512e103d6f4d045d7645737ed0170703927c9fe44b220775
Date: Mon, 29 Aug 2022 15:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661785852
