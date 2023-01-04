Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7092BA53
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85569C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672870887;
	bh=xNaEJgmaswu5rjJfq9aSZ4M8ZP1pPcY1assUhTOUrMM=;
	h=To:Subject:From:Date:From;
	b=eyFTJrGpxegAeDsXyyp8o9b2B3hmWfc1jiNrst0PEAXm651TevUg2nc8atOD3U+D0
	 XuqUpbcyXddtpX8WoJFffeNL5kz67BWguRvVhnLzLjRLBZKSpeSGvFLqbhH0uub0Ft
	 6L1PhR+steT2UflaRukNQo83nJhtQES4ik6TNX7gNslAOt/NkXBOm8lDRqmwuMCtEr
	 sAZ8cv/xmgFGpYgyPFIWtd/laqhJ5M1Tsv1SNu/dUgh8ahktyYItD/6V/z/llCF1KU
	 lv0ePhwgTLTtVC5D12f3rigK0GmDyTXihZ2DSlvqwVTeVgl63ixbKpMU/qJC/AV1jn
	 4D+jf6mtTXDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69128C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287088742.21924.17952344604585370220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a348be12fd754083dd614c66762b0a486109746072aa636207f4db0a698929c
Date: Wed, 04 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672870887
