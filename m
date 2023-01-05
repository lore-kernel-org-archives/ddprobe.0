Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0AE42F3D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC6CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672916487;
	bh=a+o4iHTSPk6zsiAdxyjex+hB65n/aQIDLUuPfwqv378=;
	h=To:Subject:From:Date:From;
	b=LKyAFMKrQziiKnLk691sxCoSGTsFVu8ZqZTV7bcgdbSfzKD1LgSyV2INfGKCTwkTn
	 I/p01Bjun2hL5iw81748G/3EZlUUK9y9XqDl1nQrJK5nm9FuvCGrRXcjq8oThAOhLY
	 Bmnv4GlNkj22bouPxMlXvZHF1OeU1EmpcYdWtHOSeKohFOUUzfrdCpaN2chNZNSFZ1
	 rt6VIZIvo0m5DQsPzqKef1PozRn1+ntSd34826ugeUYnbgbYtP8Tv3jDoE8fnFRJ7p
	 fz+m6lf1vkz4ckvKTSvVLpNp6SRUND/cAgRXPMtR/vDPMgl2ZVG9F9BJFpU1BF5Ylz
	 QKYrrL3QAGoMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6203EC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291648739.11425.6336487316196561781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb2f3a8c7736553db43632398045adca9ffe98410208de2c56059ff9329b3cd
Date: Thu, 05 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672916487
