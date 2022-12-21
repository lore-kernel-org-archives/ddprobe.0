Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E137E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EA4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671630087;
	bh=RV7fF9iIVxETeALDz5bKC8xa4x1cO4fwTUkO62mTees=;
	h=To:Subject:From:Date:From;
	b=uXpntCoTBCz+WMhK7dAmYROZpSkKEEbL+4udIXyy1htFEprVqyGcWbuHrN8c6D77W
	 fMnTLfXu6+pX1fSp+MtvkFrdRZrT4qIpDUwTH5fna1Rmpf3chXESZa5/34CgS2cHNJ
	 ZubwJWOwuoDfnhkQyBod761KuLD22BTwr/5QGPuTkrK3BgDNB6E292U7veIHHEAit+
	 0S18K5FeO0dRiNPmHHmGz+TUgwBuQm7xyWXc0RDHQEU/0s7dQRvmNHc6tUytZ9OzvC
	 QoQNnVMSAkUIGWQ31N215J81uY3pWle4mfCg4yz28E1UZ2bB2T/u011XQ5ZNQEF82J
	 pa+gVzs91A4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633E5C4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163008739.25070.15609515492776082030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98182a9071cbf192f1cdb6b05e4e10d43c444b8c9573b2f9aac0cb6921031213
Date: Wed, 21 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671630087
