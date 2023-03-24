Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F3417E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDEAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679632805;
	bh=nwLxsCnJ5mRG+cajfbwnSUaszcLgxmB1VzeparoVv6k=;
	h=To:Subject:From:Date:From;
	b=NUargKYzdm8s1q9neNV2n2TehmNoeWnUxN0OojJ7witZusRD7vFGqqhzgozGMwIa1
	 aPtLfc4Wfy+PYo47z6q4pAuHNP8LwUocdl/8jiqb4nE2mIA0PaZl15fHd7Ps0J6fDX
	 sPB4fwMakQBA8nkhc2qjEsCqK0b2aq/vQZYQjXMA9dfDsFbfbpOv75h93hl3PuVaTZ
	 2SMGj0NgJ53t+SgcEpMCX7m7RS2nOhHtvAoLQ6b8dvuNLflsAKjlN7drEFefc9FGk7
	 6aGFWK9/cU3lotNqyZNA/DVJj8MPfzp7ZcUpTvYO4c+LAJxgcHTkIT0DWKIRja2RBE
	 +2Hn/OxVkbhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC69C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963280577.30796.6933861908556957026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b88f37fdcb9e785dfc9a456cf65f0788f91a657a57d86a6908d0f26ae1779f
Date: Fri, 24 Mar 2023 04:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679632805
