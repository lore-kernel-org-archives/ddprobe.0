Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E444417
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmvcFvqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4AAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703496497;
	bh=lWgqGbNTO0p0vtNJ1KsYJw3XNVM6FZShD2z0IbFFDTE=;
	h=To:Subject:From:Date:From;
	b=OmvcFvqGVT+kJkkSSjVksySM1W7EQFpjhEQHK/yl1PuYV+twb8RcX0fuIL3BfgCQ8
	 Z5jmrTMEYJUrnCrmtedbA7wX9fIjJMN+SlT/x8dBLOw3RlJgO3ezeYLxB4VL3ESeto
	 zHVqqtbwbRr4XCfF1rrWwkTTzy5cWzBkkD4auaUbema0Zj+yIwJ0dVPGzDJhumFP8T
	 5VGqzCnOy9gs+l8oPG8za3Crnxd/+7u2A66N7I6bNZWhf4IRTIoHoB3NGSsp5YFnQx
	 R2tWNnvTtNNdJDp8JryAydPfHEPQnkC3jEmmfUtuCQsNa9bVuMu8KRMsWxOWBvuhYU
	 Mk245y5xSC24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E316C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170349649637.31038.9757648137919163744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c73689185c25c346faa5d89f9b75782c95d380cf136e0813ad24b6233327a
Date: Mon, 25 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703496496
