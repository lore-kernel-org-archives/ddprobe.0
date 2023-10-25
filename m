Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C0D620
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtRbWLr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81802C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698194296;
	bh=AkCvmCVltRS4ynPpWCTSjLQQR7FbVShWBfNdlQZVeHc=;
	h=To:Subject:From:Date:From;
	b=FtRbWLr4nit0ks6WItsxtUTA+/8+3eQRfh6BrTo7wMvl6Sht1WrlJKvcK3SB/z8v2
	 n1Lkiz51PT0cM3KUSQRFB/m8kBvy7v3e5Hfy3AAljNfaA4dYLB0GDDYm8CE7Txam0B
	 x17aXAI8PXTAQO6lv+OBDcIZzZQjn2Zc2tJeTHWrTc7TdLrveSIlOs//ryFkWkRTWY
	 +qd6WmvdK3m0Umg/yA9ieqYy8mkqcUcA29HiYPTeSNMAKpdF2NG2sUeXpsNwdgsTRC
	 P0sCkY34kV8L369QAMOVH5zNtMD+xCddDx7rzrfj0nSKuLHZL4MjKvLg6RxSCiUXiJ
	 dWNvwTgdfxfRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6685AC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169819429640.24313.4034399397188375537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d76f4cc45bb914b889163006d346296f40d07430be7cf8040edb7ccb2bfb0a
Date: Wed, 25 Oct 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698194296
