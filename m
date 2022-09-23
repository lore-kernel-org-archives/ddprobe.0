Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C395615A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE0DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663900853;
	bh=sMR5uwwho4WtWNL5xj/fIAioPAqWadFjieFw0DdcGSA=;
	h=To:Subject:From:Date:From;
	b=UspWup4annK1GlCnHZe6fuYX+AnOxoI7kaued6SV1DmsjwArEomE5d5Ac6ppgkScr
	 XD1DUnm2MhY614dREZC7cupA7Y2gqy3CS+/9d/cfE4cm8Ubgm1/b1Y9FdELkuTdH+M
	 eYfEsTaHeri74DrP9hbKqEkwMxnyZcKD6KkFcUpkXYMjgjM49Z/z6YzFif+wyI+Z31
	 dGN/JvUMJ+0bmtpmuaf0O+nIOoBLaK7uYQxuvwxE+mfkImUuNj/trPbmz3WaR177AQ
	 D2cpYBI1xwvcJpoxBBnlUpmi2kOuja/XaeJrUK6ZstJBExoZK4eLyZc2d1pdlSS/6w
	 VAG3MNuyRwD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7AEC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390085336.27776.4280955380631509955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88910e7c0d4aa1ced37ebf2d22ce38c4becfc3f4bd092e3998c26a376d87cb66
Date: Fri, 23 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663900853
