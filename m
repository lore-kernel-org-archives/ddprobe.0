Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA22F7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C11C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664496053;
	bh=CIvfMCylzXs34dRibntJAeM9PoUonXrUyA2bKG0JmLQ=;
	h=To:Subject:From:Date:From;
	b=JYKW3eV6pzX3vTddt/8RlMDUE8wSHwS259Iuw7kr0fvKEiQZI/L/veUhnhmWz4lXT
	 Hdkxcqmdq8OGloG41SaDS0UgdJc10crmBQizL7wBC+nfrbSHPtoe4Yp0OAm8wgr5P/
	 RO4urO9rIEYM77utIyyYKuxsHWmHqwg8/Bc3kucdG2YwFgy2i4+IIlYdGnd4hztTMc
	 tByg27IjUjOq21z9HG1RvZtm0s/AE4X92naLk+lkniGLgNWrvbR81ZdT51osWHgaGS
	 puaTiCYnnuy7+iPrLhcQiV4UxgJsqeuBy26Y8j1wfX+e2VV8U+bqO1yjPFmjMKrAYK
	 aSue3LEhWcTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C5FC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449605332.24961.2255751675288997999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1256fbd695fa04c46d6f9ae25d644ca4421e8264fd14c8a4a5dd76d45f86274d
Date: Fri, 30 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664496053
