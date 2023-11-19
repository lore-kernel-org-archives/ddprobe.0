Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0EEDF4B
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptHFEmuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E2BC433CA
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700426896;
	bh=wBlBRNr1XYmsAosFDGVg2vQAsvpp1qvMbCXPELZHtok=;
	h=To:Subject:From:Date:From;
	b=ptHFEmuYYD33iL3oMFP6Wt1J4fnjShWj6hUQ5SPoxpUiVo5ApxTEv43YKQM21dyv4
	 mdz8nzwHpqhtzv2AS5kSgAe8HJNF4Ph5AZOr48c7BvrRYeSnCxt3CDVLO51YKddsHp
	 tA6zCELM3GFLVuoH8NqT8ar2BnnPCjL+1W9HJkciuQ/a0A/QCI6BJAkH07x/Fue5Lq
	 ulSzz5/4y/bf/7fKocds/076ttJpCySepjewVOmW2Cj/+FP+TwOlmyzULZLUlkvpaD
	 wC7RRCKMVt2vc7VrT1VL7Z9iSejoCaVMSUd5yqFTpi4ToydrvSQsl6BjugU4ryk/g/
	 tvyqao/3HD+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685C6C5ACB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170042689639.12598.9186614535764199727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68413f017b7c425de9ebecd309651730de850342436d52ece88c009af8833922
Date: Sun, 19 Nov 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700426896
