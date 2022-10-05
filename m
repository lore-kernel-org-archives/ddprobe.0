Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73174696
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD23C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665007253;
	bh=dcHV97P5DlLaX7VjTyZ6WRylk6wmpFv2UkdhLhy2Q2I=;
	h=To:Subject:From:Date:From;
	b=uwubWW+E6SQUt1LtFW5XqsFJevSXSqG2pTIFPIXrPt+PDGA/v5WavoCmPdXwxBD+B
	 PY4InWXuBYUbuGuXywmW+flBKG0uCsiCpJEtPTsuUlEbnJpP1LCR4FgimbXcx99nvz
	 9ssTghjJkCwj25YTgDKUmwhqxedItUveUxGs8olFeyWOzgMQUwasgxw3q/OuFxqBIB
	 AIxB7HM+0AjUzO2aLfaxHL03noA5R8bnRKJRil8ntBDyKnytiglAlezgScrTRGlhKx
	 HWmbydMB5vH042g0LLLkZSuGWEwCHjNWNvzp3OOmKU4fh8jfbfNlhDNgE0dYMJZmo0
	 o1d8buw3fF6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5538EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500725333.7028.912743839712932654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec51f43e65e22e301c7494793a8645f7c69d0d0c1aa515e469abfe94310a38b0
Date: Wed, 05 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665007253
