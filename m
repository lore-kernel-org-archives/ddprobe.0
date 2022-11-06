Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F103E7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A27FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667698254;
	bh=wUvbeUFEO6ugciFk9//fzMp5lDCavVt8zZqy+qySqGA=;
	h=To:Subject:From:Date:From;
	b=OD3paf/dBLT2vqwX7TNm3UT0QZYA5VYndN1ZWgp1vBT3lGU3zH0p9ohdsM2BsoAMH
	 lT5cwC9EiC6khY0H6WU89AmreajTYBVL1GTDdLfOwDvRFW1fgNePZigr3Pn02bDCOb
	 jcLh5KRKaimIfR7CDeR3pqktMQ822ZjefKntHNxbY6jpbHvcaHlR76C5WH4aTz7K/7
	 T4D+wf795p86fNbTs6tH4BWK6KxIwnsF2cbsCRbrckHWOAAMnEdymhnLRccpnALJH8
	 XADSYDGM5c7v72bcAhLGjQJ1jcIrltDT8+C6GyYct6A3Ibnyy4+trCKxYxByXLuPKY
	 l7W/JsqzTjhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626C6C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769825436.17112.12517064751045662695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0f16185ea88ee045e2e29bbb52672238831cc119c848f7c6b4ae385fb46119
Date: Sun, 06 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667698254
