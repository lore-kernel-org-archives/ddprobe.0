Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4DE29A5
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671649287;
	bh=9eqmtA8LPtQ9PLOi7suuXMPTYdpm0GP+gQP0T2u4kaM=;
	h=To:Subject:From:Date:From;
	b=bqA3d3WhRmv83jITxPau9M+YPYo7tr2RqvxPZtA0aGQ8WtOkJC26asGRnad4ObwNu
	 TVbIe7+KrhykTcTfjDiCpiNytxOdtXGlTq6lQgpSMg6iXtJY04LFJOVtDYbV02nNoO
	 ObkU6JljTsGuxIZ1Qb1P4I7nYKNvO+asr346aPtjbjVzEfBdViFKtLrlNyGa0vY8WK
	 g/n0ehKSUE2h4ABdl0mZoW6SvWoXjVXoGSUwJsutYLiivtCPIjOo3Pc2emGO3b0sYS
	 KxXbpWjP19FL3b0asVwkvBpOdOFIsloinUObTI5BjG/cCohIxzdlnANb9XzqF8yTCF
	 ER53PCXP9oSvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5F8C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164928743.11017.8876014678208023881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bc452993b72b2b26ecf81bbe919a0613c4d4cfad87a2c6af421f00c2c7483b
Date: Wed, 21 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671649287
