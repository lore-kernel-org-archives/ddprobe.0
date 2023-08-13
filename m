Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664B67E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA40CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691893388;
	bh=Ur39qxtJj9LG4CTCDNgfxh8og+nLoK16AR9nK/IeWGw=;
	h=To:Subject:From:Date:From;
	b=eDPrsxcwmKdUx1Y9c39iubImV5EPZ7hBDEpYhfqZ3S784w29h/gzYf1LuuJuKUzYD
	 hDOvosBFZbCjKPUWgBElj88wwb+m12+SK5iiEcaPJNKzp2ne1umeSLMVGidiRtTxCv
	 J/ELOdhuRfilMLUaG5bRfs+I0O9At2nwI+auMTdgDbrpxeOILNyns9mBFG4oVFJ7YH
	 0iX5cEp/JJ1HfcfZ0dHL1GWl8LgjbUUdsqlZRCu6fhtFSn4Z3mMFiTC8FPS9hQV7D8
	 BHgkze5OsPZsM7B0yNemi/bYv0P/s8K4kfs9YLsqv7A9e20aZ477WQVOyy2QhaQ+av
	 b6p7MZET92H3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD570C0015E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189338870.12247.1182002146903625026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda37de9d9ea255e69901d4312b9c7ff8cb8e096280b684ff96f7b93120e5d76
Date: Sun, 13 Aug 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691893388
