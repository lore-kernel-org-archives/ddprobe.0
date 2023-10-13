Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B08710944
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Baowzyxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B66C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697185628;
	bh=fGb/IzU06MUT8Kf2iSdgpRp0iqk837+h9+BosIOz3+4=;
	h=To:Subject:From:Date:From;
	b=BaowzyxfasTCnJXeSpIXhh1GvbaaEaa+QHQtYZNtgFyVHZRmIZl1mbBhfRPOHs/NZ
	 MEX39de8LU4ntZ5JnnPAVQNl7EUPzmNpfqCpgw4cb+Ag6izFA18askYlvWLpaYz+34
	 ulaFLbekASLZhFORH/j+3EVMc9TqC0Yb7CU7eBXqdCAEfExYBIVa6AM7oAj7hoKHEQ
	 fY12Twaz9HM26V4TE6NnFsLZY3s8DyHl27QPFRLBfhXlmHnahSzgfv/KjBEh+f3cgs
	 gavkx1vLe1xrJ/UgBsGLb9hXBZ/FfQKI2qIDDB5pWtJ6ttgusN7MID7OzToSTEecx7
	 PWJJtAa+2eB8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF70ACDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169718562870.4667.17308880760686005797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d72934f12b5de778f372f135a15f5da5ca969596d96ab5db3b2b06f59201920
Date: Fri, 13 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697185628
