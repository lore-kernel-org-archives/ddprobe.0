Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2071A71B
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hvq+tRrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8497FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697843896;
	bh=OQMNlACjMRvqbHgQeG6qg/Dc/QA4+BG4tzIlEY4LCOg=;
	h=To:Subject:From:Date:From;
	b=Hvq+tRrJT1p8+ek8TVh/Dsbug6PtCTDchqlDH90mCUlUaywnW03+N/PuiinyPaG8H
	 ml4c7u/fhCZeL76IrLQvWxbUugDC5Hil2TZq+cZLdz1xrkD+KQly7KEQ2KJgJSCFAV
	 yzVxH3ORFCKwJyp6wmu7SMDvMu/CUWLgUQA8BPLuDqKeKqq/mV+UFtlomQ/Mq6i7jJ
	 IgE/lwYf1ZP5a2s44BOABPrTik1cuVul+EZip3FHU4F5nC+JKIt8AlMgnzdxRbfQbY
	 p3ZAjR2OFLpa/K5VGDIYTP9UvuuYgWaLQg5ceDbzhKZkuU2JsTz8yhy9Yj3P+EsB/V
	 tGz9MXLdaOqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C33C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784389639.13049.8398407247644864808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b16a026bda787f9c261d952b5f4462bae29a1fae33b6e0033400c17c3397cae
Date: Fri, 20 Oct 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697843896
