Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B834D2F5D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B912C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661957453;
	bh=Aflhqtn5vGjs7nBmXkGkYZFYr2p7HUzXevCJK2YvWj4=;
	h=To:Subject:From:Date:From;
	b=YgbEI90X80+6fYCczUagIU94kH6tSSGTkrM/ygRLp7smmFD0iakfvELQoJV3Lun6h
	 37tm5kFxIqshFqhxpc4ZK+bBk4Rq4sh2AsSHK8CRaKF78fCC/ch3HWwlPj37aSNYNR
	 U9HUeNO5wyGR5/+XFbQJaS4ZS1Dq6jioEaTK8Pre5Hty/d1ds71EVb/zUX4GiIUW1w
	 9ZocgND9fyC5LMlEuswIY+drK56xMXl1a4nmgiNeKvmaY5aUk8nCx2PauG/n+IRuBZ
	 JwpV94L2HMwzOAd/DKgHnHShlkM5Q1vHtKhaYr1idr7DgiEN8N9+PJZ55p54tbELay
	 lW+5MtfoCgQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51485ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195745332.26485.2090859019965165499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2e8ac69279ae22f545f0e41ff3064bea817a39ce5861f42e5487cfe4d5a59e
Date: Wed, 31 Aug 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661957453
