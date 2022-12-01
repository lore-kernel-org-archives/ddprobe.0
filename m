Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90D310E8
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79480C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669879254;
	bh=ATUMe38WbGN/lRFZrm2HPWdSmyGhixqKILko8rlP0NE=;
	h=To:Subject:From:Date:From;
	b=j62mvLw7dOGkNeJtUNfkN5GemZ4hZB3BDT7wY8vCyl1M39AB3EALIyL3MmQERCfdG
	 vZ5NCypHHnLvGU8dAjv9XsHWBCnveN3/s9oyN+7lPglsSRK1VxcYd7JrAoFLuaSM5N
	 /BjuyulEh8obSqTrYeVDg9W0T6DQsPNy7RRQ8sjf2y60r34mM6hrk2Be7DDvxWIx4t
	 rG6dAxODhF82P91Fot4ZFm6IbDuA5KXpVYMuy9zt8z7WxwVChPlvQEJuGVRvxBwg7F
	 IdyuW20ef29zc2zcdvUEJogC8ph/+zLHM1heV/u2ZeRvJxnTuLeXQJiYDz8/Qok0q7
	 yq16Fan0PFp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584EAC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987925435.3241.7317325197961782818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45412ef8b363fd40ba95b10df757f94e1da88c09d51c17929654276aefb631e1
Date: Thu, 01 Dec 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669879254
