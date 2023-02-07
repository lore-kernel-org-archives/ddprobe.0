Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E1417CB
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB28C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675740365;
	bh=FyrNanqKlA3m/3HFXswZZzTfvQAFBuvvTLQDFybhhzM=;
	h=To:Subject:From:Date:From;
	b=dc7kvmQWQ+0/nmWy2zV/wrjMpfj+bgYGcYe7yowmcnlQsGxbyxvmlFWyX0/Smc/V5
	 Bu4ei5bIIEZwQiJHFxyjXlVnsVPBc4LbKSS5ksgMmxgojF3EuiGewkLnM4kAws9Say
	 k6qk+6ML0qw5Ie0EAnVmuxxgAhYeLXcHhw1MmOIq/r4l5d12oi1SlIIoPzuk5/TmTf
	 jvEiWkQ1np32CIQvCS3wYIzxEOnwT5pjFXrPP/b4B3oyTVm0aZvl4ho8wy+Qh9B6EL
	 2xfiXkEOzFUYt2AG9aT9rap4JybTnguGHEs7emhMRrJ83bXveCgSwTmWG85XvLwsir
	 srxz763g2VyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6E9C636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574036576.3502.2150015708715317450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86a772bb5fa7dec3d15740191d870e1f9ff474e0e0410d9b090668307ea989f
Date: Tue, 07 Feb 2023 03:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675740365
