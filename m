Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBD47E4
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 05:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 098BDC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 05:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683091026;
	bh=5WhlwUpUSkf6faJXmFJoGAFgLccjgzX2u2s4YhMuURo=;
	h=To:Subject:From:Date:From;
	b=LNdRtNlzHyDdlJ3bApfkIWy7lCt5ZaONrtQA7s+9XIWxTgwWzFGE6FvUU+i03AGv2
	 8pRn+mWaaK4OptjuzKpvD/bcHX7lmIMqiYqACWhdSVXzYl6D+BoCwNp+ibNFPHaQon
	 M8qfMQyBWqh42yWU4UbvvxaM8Gx4tdxlaPgeAKgQzc93wb/e1/9SmcOMZeyR6PHNVg
	 FwHq2wu7PFSzIzIQo8iD/JvfvMMSEZZUK/6cDc1+riVg2m3SdGhKwtnFzGmeTi9L6h
	 b0P2GpBp1deDkAVxBTlcUk3+iMAhuLO162tHwLq0cnSlmurm6k1FQ6SfEUFlIv6F3p
	 Mg62B+Ru2lVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE325C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 05:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168309102585.1856.4723751814997995575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a640f1537e8d0fed940f5b9feb8501914e3114d127b19cd0cff209cb6366c5f7
Date: Wed, 03 May 2023 05:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683091025
