Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A78C9445
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qjak+jNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88370C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703317696;
	bh=NySZ4ewJbrCQUjL9/+XRAR8pn63xmF/miApfXqSn3y0=;
	h=To:Subject:From:Date:From;
	b=Qjak+jNoYQtUOHp43mRTkRP1UiXSbWn4n75HmE1Gxlj+Yhsh0UnuZ12tPDPWl22qC
	 nQsh9cCmsiBasCBoF+mAda1631mRjuzQXvU0vYUunbn7/vhGjoAE/MLnQiBYlpxbww
	 oyl1+/RAb0Cso7QAao7K7K+6GQ/Vw+uCWOfSm6DPPH/VF/TLqWShUmyDUstO4mwI2O
	 yiDsP1VTjdboggARGtwWl6H7yMd79whd2aix3jxw7efM6G9rdJt3VVEV74gJJW4zWj
	 OC13a4cXP8fDz+vqdOSlVH2cvKAAldlIrABKfFAhkPbpzgv/6oTxebsLcFaWBFL2mr
	 jpWgRyURt0PaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685D4C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170331769640.22567.9556140123324652045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d9f707cb23ff5caaf656d01bd3144bb7e28c50881681810886c5176a80cce5
Date: Sat, 23 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703317696
