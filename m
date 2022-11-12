Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC34363CC
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FC0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668281454;
	bh=GZGlbm/htXI2ng0WdM8lK28hydUO2hemFOCDfCGX9AY=;
	h=To:Subject:From:Date:From;
	b=XgNs1GSv/cgmeC/fZCekSY7mauBTO+j4RsGM0az+H2qiBW4I6DJt39KQMMhXJFkRC
	 LOhqZXbgBbkoA7JzMp0S6oISZ3Ukhdi1y0OoUtY9OKOhA477S7CR0PVjJJ6WQfNmNt
	 XZghhoPobJ06MDgOlFmr97sVrTAtRXYNuxp+aIJOnb6Ewm6NB9+HOkLu/nS8LFaUWp
	 gfNPx4gadCDwC7xm+2UVNiWyihCFl4DIgkIVhkx+hnhRlu40na0wJWgB9peqrT8UHG
	 sudWQNPkZmPhpVfxevJ3GNBi9EsLGVfmvMiXTqhJEdg/fbgaAi4vity7/9n9GS6hNj
	 iNKwshxcTfQDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568EDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828145433.18550.12673099629187906166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b0e12aca55a5eb7c71260b305b975ee86eda61df949b65dcac72d90272a3a0
Date: Sat, 12 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668281454
