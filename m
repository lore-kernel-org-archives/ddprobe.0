Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6C429A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809CCC43149
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661424652;
	bh=NYPP2RcBFnFuv/fF0+LL4wbYjyHaPoGr0MgrjomzOLY=;
	h=To:Subject:From:Date:From;
	b=nmQD3jbfODY+KwELuabS0k0pUSW5WVF63OifKIHzHr3CleKTKOE1rgwonRaZPgXiO
	 JHhCG9hPsyMnb7IVnWK4Km0hsXN/eBjvGUU/gUDbDY6V+uQXmI0e/XsXPKKMIqEGAC
	 oo1EvXeZoPSagIeJa3xvL+TbcNbuMge8hifq2wGwmOokw3WVxq5gH5Dtn05l3vRPnw
	 pSYLZYDmn4wkEBItIdqawFr3rwbf42sLIkVaZr2sRtCDZrGpfVvi3RyO2GvzqS9EEm
	 C5ZqKhYC2d4IcuO2LUTObDWM6ki0klWH+6MRc5yYpztz3BbF4e4ni2rWSCb/t0dcbs
	 nKJSAHorbMmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584C0C48BE4
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142465235.24598.17653017420435192778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674a13dd06a237adda2e50e7d8ee01680d42964c6f8b5aa5c3de67aeeb3a35ad
Date: Thu, 25 Aug 2022 10:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661424652
