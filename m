Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7AB15A0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10C7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687917788;
	bh=70Tg0qeLD/4BuxNejJtfCqwxoLjCuszpSHd9U1tQaP4=;
	h=To:Subject:From:Date:From;
	b=L1KnjKeSp+pSF79Y+IN2ixFyuRoTfOQsqTSGluyXe/60UI5y5zrmGibRiVuBJ4zcI
	 9eDMcrPliufRDXVfHTpJn6p/FbW8TO+lASkkftEzsI9bw1EGV6XTNbsEtmFtyveECx
	 hCrML15uMmb9rGzWAykjh2HgjQ7BzNtphBBCRlECQKumCM1zccl+GhNTY+IRckQsJE
	 oTpXo+COjaFKbzi1SFPX1+8uIrHwpdr/bFKNDi4QZpdIlvdFb3+b62TFX4DvTIQdKm
	 FJ54gpRom/dBMPRgGDKPWIqx7NWooJ7aNBMK63czS4OIPYLy+sJQ6+XIbvh1wVWZ8K
	 /J4XDdB7k1shA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF8BEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791778868.20531.1240782300170964330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b179e2c34383f61c080e0a0ddc19ea716afb44deb1d60cb494dc44e99b5557a1
Date: Wed, 28 Jun 2023 02:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687917788
