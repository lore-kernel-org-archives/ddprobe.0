Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47479A94B
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C1FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675980725;
	bh=ZY8Kipdj0s+uGpH21eMAeKcdYgUBKtlt8Yy4wVkSuuw=;
	h=To:Subject:From:Date:From;
	b=pcmMBxRnkNAm9SKCvtceQwErWxDPQYE0NeLQ6abLlc4yoS2z7pSHAFQKRLgs6B8yV
	 he+Fw2zCKayQQpdBalLQA19XCcCKtjyJJKvSyP5/VSpGuJzsCNX4dVRt8RUgcO8hU3
	 sr8RyIX2a0R0NwCOuvxgR0Ho5VchKMwxTEu0w/AK14ff9tHZdiylt26YkkSQdA2Hnr
	 QrGF1gtpY9rItinjukbdbDHp0/5paMV9lSwbVYeg8gp/D1Yuy5U0mkuCmIJq5I2Www
	 nG0V32+6YtURA5Gxbm1g+3ltDY6cmLGURTqcgIth1xXcLMsF/02Q7IWdxZfWUxSWwr
	 T0YwJTd2QiS6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB529C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167598072582.26995.10229540279060878245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7163e01a450eb40979c2157c974a77e1aaf31009c5b25dfbd0cd0e724daa333a
Date: Thu, 09 Feb 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675980725
