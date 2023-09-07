Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BF1EA9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C506DC433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694058248;
	bh=Ix6wGhEBoR7yg55AGQTS6or76eLGCD/N6KcIsNDHC08=;
	h=To:Subject:From:Date:From;
	b=hYP1vrymxfIdXiasLPl5opiy+Fko9y+xXNpJEJ/+75fAF4aTdWSt+UD5ckT7Oq9fq
	 mK6Ani7FTFhY080bNm3LCvlG4OtDSDlPYI7fbIyXpzbhsFphMlr9ZA4pVBiD6W2Muq
	 92PQet28L6fiIAY1Y1sU7EuiHBnztfyATNHDbiyCjickcc9kih3whSeSJ/Y2q9pK3L
	 Kqe19o0gu5EbWtS9WnbJuxN7yHJc1wZRYzU4L59KRv1Og0Qg6qAtJ4RXyEsZNWm85n
	 XFHAoPdezVrh4IG25eSXu4fQ06uKTS9rqB8Y4MnIH6Kpq4uR+dODutshIFWY++vhJA
	 lzsdbwiiLcU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D68EE14D4
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169405824867.8754.149044593711128696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973dbd68f90b6f3cc9fcfc67b0a0ef782c10625310261a075a33f14d60ff9ced
Date: Thu, 07 Sep 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694058248
