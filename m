Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B876E4699
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A126C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669227654;
	bh=vsYXU16F0bD+l96llLLt0NwdaAJVjaoiW6vjGY9mm24=;
	h=To:Subject:From:Date:From;
	b=eYTaTRiWAqbjutE0eieBZNsTMnrxGeHE4RQneUschV00QC2T5vX6HKO87i+nrWn9J
	 fsCMgNhOuJytgWcEWg6i1tC7bBJ4Cg3BNcPpHUq6RB8EwMd0dXhgrApHdQY700q+am
	 3zfLPtDfx/aG9pp2G7zxPSlXde4X+DHc2syAJ5W25/0SI8ou2D96Docf1ki7MjErJs
	 qNqQTApX2MVJ/Wk+MnF3q1/pU0yGEu3y+TxRgWGSFEjBk51Wp+ZLm2DAMuwfGbkuKG
	 6Rm2I7ee/vvxcayVu1fm0eJ9w0ym5ClzdpW5ZbQ/A4ZBjyQkLmztQDL/r2L3Lxn5tJ
	 Z0PKiGvWrFU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C52C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922765432.7820.4239027386485267793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac85ca9ad5cb08917b6f290a5e9f2769940f4ab6fa85ef006efeb7cd52352d7
Date: Wed, 23 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669227654
