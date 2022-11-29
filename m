Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB967E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81909C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669716054;
	bh=AXYLJNDdasGiCtnKezXgIAB0KY+tifwNErOaeSs2RQ4=;
	h=To:Subject:From:Date:From;
	b=m0US4+h5po8wnrqLLFHjbE4Ouqr4NJz3DGN0ypO/tJaNceRXmXmCK0Y5SMScg6ntu
	 yTRocuwVO7tHHyxcLhEbFa6EKQeReEPV6ulDE0nAi+VL2PndKZA64hK8R4jJPCceV0
	 c/pVzfK/UhoUZJ0UZeC8kZUTVFgbSCT6xK2AWBkEoHg00SkajmNcO8+LIM1uEq6/sb
	 b8D8Kn+4cIaXPIF2Va4KLPUSmKc1DP3LPO/CT8UvRbSaQRibqTF4hYrUfzNM+zRoQJ
	 KW5S6UD1Habl0CTUNKZfo7TFFtRYly+rEpQGK6YeR+L8yLUHikKdxqRAYSaBnNWo+T
	 QOrHpn1pya0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C47CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971605435.5536.16261815398779701782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428b32b92037b764e4e76f175f3089ba2ea14710295208c6b32e93f81ed76988
Date: Tue, 29 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669716054
