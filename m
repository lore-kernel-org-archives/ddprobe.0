Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C847917F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748CBC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669532454;
	bh=Cc5GANWwTX2p86V6pD1kbndoQsnZ16BcEqsspKPZOtI=;
	h=To:Subject:From:Date:From;
	b=FjIJlEmO2OJ0iHjuV8passOa39luZay1gXSJgssxqOHrtZjvEWNbsgb5NTAp8M4xy
	 m1UX9/e09TwbWJwiVg5x+U03SlTVaWszKBa6reDg7HSsR2qbRy4FVUSNc+Kf6Mc/dW
	 vkDt4467ulWHVEXVowa1MSPH3v5NN08aRSUP7TWaDO7RUH6GtKxB/JUvNdpFhJtxsS
	 7VABg6+rHtJRLD0HfwespLyD1PgXb1TbjGfAp3Aqm2l6vfj3cTfotPi5354UK//4yR
	 eR88RsWUJdffHaHFlZSXDShqbrS2I2Gwf/ri8aEXwixQzq3NBBYCXl6cEF7Ve+QfIC
	 GQqr783T362oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C9DC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953245432.11618.703286420949716718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863b4a6748f2dc953f61dc5ec2f2bd90d65d73d7af16c534ab8a0546e33d4f8c
Date: Sun, 27 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669532454
