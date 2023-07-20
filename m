Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4C21BE88
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6356C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689889328;
	bh=2dkzmAkRMfWDJYpDCpe8YWm6OHrMRlqylkIFH9q+G0k=;
	h=To:Subject:From:Date:From;
	b=kZxQ1p5HcwtTrXCwWZhJJXD1VDymOWkPMdt56bZnZyzvVDehEQgw6D+SJ9LO8EiBg
	 wITbYP1ZjIKFSSDrjJkwZKxzPh8mgyyOHQ+/TV/fGAqVd3nNQ2uW+0QMnVEysby6ZQ
	 U1ToMDmbQ1QFBF3HmhUR3cK2EVdyZkqAuCGjXSHyv4gSAxjvXAC1ek4I+hIQcOGBYU
	 wYHGRava/Zbkm1EZ9pcRTBefNyYkr5qDCqE9WR7E2ZC4yBgbReV99x85tpjygQtqBl
	 vuepoB2EsaCns2AyeenBS4gv+C8Wjb+EAvl35bekrdJnFYadALB+g87VHtRgNatlYB
	 1Oby5DDqC9FGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A06EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 21:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988932868.30539.243742266107256675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b910731a8bcf3c1cdf008fec677ec51dcbafadc66338eaa53b1fa7a66361d4
Date: Thu, 20 Jul 2023 21:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689889328
