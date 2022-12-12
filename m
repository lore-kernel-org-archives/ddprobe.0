Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C532F58
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1B0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670877687;
	bh=1wXhQVCVTSbzJ2Gb30F3uG98e4j9obxuh16J+mUCIGQ=;
	h=To:Subject:From:Date:From;
	b=WaqAOee7WzThA4Mo6/Jzme/rWERsut5v0HFbPgPm0Wz9lpN2gDki9eqA8kOn4al7i
	 IKQmwKbM39Ts66TGIDF+9DDlAnYNXDDS970c3JCLoHGM/11oQY5DpsNIxXDCDjQrZu
	 j7r8myRcXp2WXBB6+uJTPVKndjeDpYDKh6cSEOX7Q4xoqM1WYWn18P5MfXViKLmfAA
	 AffsTNEZcamxYxG9QJ0lytrMxrZrWtSmUEsHL+FPjGQcnIMPm4YrkrV48o13pnLGEF
	 tEcc7OfyNqmQ/g7A0jDaFTlPuo2/PIqG1MoXVl1ONlWGiAkYwUbIXRkSUdpNsrBYdX
	 1a7dOHYwPxF6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63936C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087768740.6073.16002380211489293848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a251562b5039042f140f2d81eb5d30bef3a16fc708ec4cf743c1570c331d5e5
Date: Mon, 12 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670877687
