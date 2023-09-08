Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B90615C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E7BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694153648;
	bh=iRToMqKTtJiwnIAXmfegqyCXhcPAlwIHaZdDLK77Fjg=;
	h=To:Subject:From:Date:From;
	b=P5q3Kx6Gb39M59eNl1yPxDdphBLMvl5gI70whyqxKUi3hFju2cIPysSavkyyrZhDa
	 LU0giq/Bswyzi3KSqvhgbuQsvFzaXIgAM0FGmv20xS9nwsfH3dAe+L1B6aqfg+KAkn
	 /lVayBKnirMLkLYn5YQ39Qmx3/NCGRuLBQIfx/OK74HH7jBniqnDIxpFQu9ydSZK2s
	 gHjY2i6Trm+ag8YrlzjuZJaIlWpYxpxKaAKGJk/ARbidbU0bDdQpa/sOqfI5M4onz3
	 +1TF0k4pvbNv02RTJJV2B+hEc/hG7OFaNLn7YKiv8glJZeapzQ662mL9w1cVBIKF76
	 4yM7LyntipTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DD6EE57CB
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169415364868.15090.13471697421433056292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648778fa61a885923daa7210c7a260385c0fac4b7984a7902f4e25bbccee1f1b
Date: Fri, 08 Sep 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694153648
