Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E14375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF73C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664935253;
	bh=XImzb01VgZfTLraDu6U1oKvyDt14MrUdS6MhTIntuaU=;
	h=To:Subject:From:Date:From;
	b=Xf5Ai3VT9fYBoQbzSLvmitOoeeZMOVMXAeEyvu1T+sgXDXS1DjR6LpLcdzmx+aUZ4
	 wvniQQ1rZ7nH8LwCEthNsEChJ3Dvi8PzbvabU00/enDfhaT7k2mtiBJTTyOIXQLcN9
	 W2Xhl6vmt58FR20mM1dKZV1w8rXXKrfPGHkZ2AxEF76VtOpbMLIeUVOu/fnZwa43WJ
	 w0/e5nRga04tw/ZUNGp+eJ/mDu7PXkitxpzK/kpmbb9qEEdW0RL8oyZ+tU+XyF6S2B
	 68apd0q69jWXh9CRw+5yoQOPNf7ltNtYcuggnE1BRW9I8jGFLyKWTGgIYLmYyVVZhm
	 NyXo6fuZkLmbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B7FC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493525332.28578.3788690799020089589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1c0aad62894e410dfb654b01031677656d1ff3f85db5585e34253ef240362c
Date: Wed, 05 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664935253
