Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63A2365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E52C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663389053;
	bh=aUX7nQD/vrrQxtCurwDfUrEqDDTMwhzPJCMdC5MxZrw=;
	h=To:Subject:From:Date:From;
	b=ERAXjJbB82F5Um2w6w0cu/9MHTrBqaMhX6f3UPg8t6dpgfudr900iKdsNSweE5xgO
	 08GjBYS2H1JqLIRMFrNavktFRP4W2ugVb1Cp6W2K01U0xrv+5eJ3wL9WegPrx0QTcx
	 OD+0Oo7BtwlOvXb2sJRMsa7SSxB4wn0c/v8PtIc/uJLAYprME52hC2r8aAC0qU/q/d
	 9u3qFG4YnDxTEPOh0zYeHh8HL8VhrQzjcUaou1DQPyxPN1upsv58fh7SA+ITyb2QIF
	 BnLI6m9PbpO2Na8loVCeMM3eHgVRIBpOc6UtXKKJtl1xz1TAbNt56YHqWhKF3+xjXq
	 F04Aj9KGv6blQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F87ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338905334.24668.7741543102782713622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ba3655d912d45a9ce0df51e1927c3e7f2fce176d18f37ab11bd2a8153bcb06
Date: Sat, 17 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663389053
