Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C6B2F46
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFB7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668594054;
	bh=Va8ndXzQuoPOYIewumtacHlOhy4vPy+wpd06U4nwygc=;
	h=To:Subject:From:Date:From;
	b=M1Sm0xvTAkly99hodFP7OjQixQ42udfhJLEJZ4wKwpT/XIUFIoHKst1godaYyIK5x
	 x0MdJrBqTd2PxokEJd56ATJmkH4EslaU+PY06nDNP5bPvPQdObCcXkuhJKPU6Lmn9l
	 0RHbY3Hd00XW2a8ssXCLy/5Tn8G9pM1ySao6Tgu7U35aS4Ea1+eJfFhfSwrRjyWQXl
	 Fl/yHAALUH1Nriz8CeF7qAOceNJHk3c5cvUXcRUU7YhF2phOjlYMz8VLYyRVzCY4Lo
	 5I/ZqO+vl0rfk/9QdF+2TdgZ69fnXuzatcHeJLCD1ghvUHMosBW64PirLBUzEATXed
	 +7M5Bdq+Cn/7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545DBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859405433.8437.16724443117873742566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74ab3b2f3299887a4e6571202a1cc5484e4173cced944ce288d62714c7f42a5
Date: Wed, 16 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668594054
