Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B442C5CA6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63DAAC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662566453;
	bh=8Jk6aSfViyB0ejOoth898kQRgMq7m7GhhIb3eO/8yak=;
	h=To:Subject:From:Date:From;
	b=KWjwG4GEqZ+54fZpBcKHLQR8dvSpwhuLFQS4G7OMqjoPmN7ReiuRapSj5bvZpSz5f
	 gM4vvc2K+sOl6tqmuKltBP6huIA9dBXQTSN1BwoihqSfrlllEhUv+MkxM+vwkLawc0
	 TfA3tDHHHE8xHYw4V5LT7By7aVl0QDF/7+FF4zm3YG2UjqCKaxz+Z/GSJtC8EH8p8j
	 7f7Tqh22fTbTIV79ac0SMrF2hL75bhDSr4L31KqH1BwgCnyd58OM0bL3H9luxQ7Zq/
	 AxgADMf5ZeJ1vQPt/jIyyHedmslhe59nSXtqVSxQBnTWZFWm5itrOppLztork8R8NL
	 fJi/Vq+WQJ5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521FAC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256645332.25279.10788778574124831665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28479402ab8c2362d7b6fd7e2a415671717d38fa4f7045851c5b5255d3aab72
Date: Wed, 07 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662566453
