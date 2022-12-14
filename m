Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D917B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DAFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670991687;
	bh=5hBfETsUXuur2IhBT6XCd9vzL5Fj5H/iEcicsPgJViY=;
	h=To:Subject:From:Date:From;
	b=SKsUx6VL+QIjcAPnq6gV/eLe96wiCMka1DjGFwrsoWPGYQBUm1U8VwYibGXp0e4IR
	 PhpKY4edzmjMOVO/ip3UtGhOxgo0RMwUyJrvzG+4TynlWhaWFbzGXCR4qiM43C1lcC
	 I8hXY8T7/Kt/32x2LJ2LdlIlE0ktd04lO3xJfVmwRqA3PYu/TgF0MkBH8N3lRsn55R
	 8qAAWcRKbrVPQVICl6gdd/jy3RyWJ8ErcK+69VGdEWuqMMRcsLfex1obLd426jkjkT
	 YqL88DpRr0eOB6J33NUSta+YpuTr40/hCHShVoYag5sJTZiUlWlu+ED6ww6mo33Xqc
	 CuEDWJ4etNDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BF3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099168740.24040.6723922432054612298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66ca8d647ff5201195e6817633a05f9bda07d92d1b7b41eb651417eb300b379
Date: Wed, 14 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670991687
