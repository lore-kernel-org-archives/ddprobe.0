Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54F88F5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BED7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562253;
	bh=cVKcxNqeAY+ac1aRPS1F6WuT08EqvJqimE+EUWBrgB4=;
	h=To:Subject:From:Date:From;
	b=dSti9MD6UZw/vSsA8Gqcj3F13VOWnZpfip6bAdHzgT/eYEII0AcPmcdhJ2A6nVR3J
	 MYwFHZ1wSF19htIf8OzNSvICPRMNXZdDZvEj2+TtwuZuawQ32+QXMBC9eOPROj0mLG
	 pN8ExTcXb0/8+Bqabt+0YJqcfbgiwc/5WDrxFCbwCwlfI+ForLIVKJL+GOhNsYnxF2
	 3lKtrOp8Nn5qNucSrBrhJg7qfqiG79cHu8J+wutpct70CpaGmM3K+/9ljzW7axK1/z
	 5huVDh2pvLdKjRAJ4N+uxYFcF+r8RN3tqgJ65gIHhZ7qr92m5YHYOMtA+X9pr0ONk/
	 BfRjSnQI+oHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5605FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556225334.10305.12861285280560542872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f801f88f54719750db79afa2ea1bbfff1307cbd17b5dcadaec126592386dd8
Date: Wed, 12 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665562253
