Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EC129A2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CCCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671294087;
	bh=bf+IXSYOAMSnvGDCu6ZLBW+kSFVS0EZ3or1QT0n2nrc=;
	h=To:Subject:From:Date:From;
	b=HV1UndTVNA/CfoyORalSUHgd01uTZVJnJrlVcudB0JRgZVDy52EB+UoOtZ9cPr4NO
	 mpP2Ln5TD0rXMKw+CQNwXkgPjQKs5h46KuWo/nOVqq/iqP68EmvpqBuTtiGAQwSFnd
	 08LhwkToa08sZqS2kT1QeqxRYLEso6v1+PNNLLqRouJ3JxxUWpViU8AS57rL0+oWG2
	 2gQ7nPuXmh/X9YoHn4HpRbJtK0AI053QbxrXysHZuSn7uVg8WpUZdvcOI+Q8TNAFO1
	 VJu9wAOCxdRBYaN7h9r9OKOPgmLLqNPDDNLRra4K0QExMdW27L5/kcQEAQc4NuwGYy
	 reXMtjMn8Uwpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68871C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129408741.14560.621486449012734423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25b9acf226d26ac6a9c5b0fda4ba359dad490fd5f23617fe7a5b3d643ec07f8
Date: Sat, 17 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671294087
