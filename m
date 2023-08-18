Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4541BB2E
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC99C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692389648;
	bh=0ON+PRXUkKWhNUKDFaTqv+9WCf0wJ5jAc0CXBt0iTVY=;
	h=To:Subject:From:Date:From;
	b=nJuBIk8B4nsvrWsjE0et/HABbaW3H9nn9R9LOUF+ACN1iSuLbeZzzmMDNx7FCDT7O
	 Z4vdH2CFD/lWAdkgjieafCPSbl5BwMIRAJ1mu9MZXPm8phn+SQln8rBZGWscrDgvn8
	 p8ceSA+9ttts4tdleqvJjfqyZI49m3HDxgmwhnwyxgfLNPRYpOSJu/fP+DBHGJgi4Q
	 D40nupH5hBk8YSsMAheJM3OgbVgpyPOm/wjeJA8HzXqjKtZeJNrHT0IhUdGH9YHugH
	 m8IHVjTrsi6e2yOHOXkgWof41XW5ZGaKoF+bIuwb4Pb4xMkKsGC4eV571bVH0wXLsb
	 zXdV8TSzqpLmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC4AEE498F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238964874.16473.462131376283412751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e05ac0cf083bf8e98e0685837becc1b1ab70859b1f100bc1afbaa3352c05f4c
Date: Fri, 18 Aug 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692389648
