Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF38D3C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3ADC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670175054;
	bh=NNBNZkJvVAtzWpvPB159ZxmGUEjFm4zWbtv2aqJYgoI=;
	h=To:Subject:From:Date:From;
	b=EmbNk+EvMLX0mCM1puGzBAi/rPj+e3EpF+5xTyBQxZo2YrUSZP5z4X1snsuz9S81u
	 Z8D2VWhbMLaSLO8k4gtxwp/UJupkDWUILJ7fHPwbF3k+vNZTyYmmpeqjjdyN20KHSc
	 pwR4Lb70LkVHnAQAoIcsP2ps1IL/dWW54hh/eFycaItYWk6pit5ZdBMnz46YQTpuUd
	 3IK4mzeq33DTJAu8TrkWXe0HmMwK5ceeAlH7NpfY0sO99yunvzynJSIjksCLqvxduG
	 8hiLXJ3wlcvNY22FROJ6n8jgc4ErPjnO+5ZPIYIZ1qXHmOfFOJAduzkYFivMXr0o8C
	 nF5u2mTHVsiIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51934C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017505432.6534.3409086775813030912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e3bf8fda1c80e606a9441f674ab332d2f45e65d1a14822788000c5e27a6fcf
Date: Sun, 04 Dec 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670175054
