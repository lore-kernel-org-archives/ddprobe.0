Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD551375
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C982C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663518053;
	bh=Oa7r5iaaNaY9JVq7rHkA+MZWFrMJ5bRKwU2n9d3hNDU=;
	h=To:Subject:From:Date:From;
	b=iGVUR4HST7q3j+XL0z5I00feYJoGmT6T1kN0PMIjt/c6boGWa6DGmNx405yLLbLjI
	 05foCtYwDLg3rKKGvDxwm8dmsxcWBllAFqSokJTaH04H/TAuTKAOcYc/uVcdMQjEBB
	 UzFA5U0asMJClQLKqggFuIc9YHM2IoVB87lwWQm2EgmFTv+AGCy70Dk667knzEKhjx
	 M5Ir1K2etye0M+Vu+7A4yD2qisGL8dq1i2WeCH35JHbs6chXDnLPu7Ju/EZbKlqaoU
	 xMpYHdtOaTeggVcJSH4xtvcnyO2Qt2FUtu6l28BwjYJIfjZunWJd2+tXwDDDeJVjO5
	 gv6iSHS7qSkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5172BECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351805332.18004.17873035036671412001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e531d96f7aad28e68babbf9d39170c3f94978804c08e2dd5e11887315dc8e5
Date: Sun, 18 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663518053
