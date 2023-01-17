Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190EF1FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6608C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673946687;
	bh=0cAjHLouJZuCSgc6FDARHIVaTaPia2n+foIpRYav9no=;
	h=To:Subject:From:Date:From;
	b=LyUIZYEeJSE/qSI6KO7iDXBXENFPFrgT2EGdtVLgzlIWCAJk92/aEkbrdpRNhaXsH
	 WurUqprp7EZImZJvtRLrbP5dcKOMsDMUdJO/tdj1jnduOI76BNm94/eTv3+TGEt+Ca
	 EIJz48PyZvXNw46+/WKqg2AOB2fSejk6TKWXSl5QmRMK4tP+K60UfiLT7nSbyTxrD3
	 hFYEWGqJLGpHuPwYtoUmvFKIq32RbEfrU4O5KMXuOLEwRGr2Ot3C8/T4siTVBAoYIu
	 JIA9Gbunru15aJzVfDX0NoTZwqw/hqx+Bndf2gIsl4iWbMq+jpgGaHwjW5aT2MGLhv
	 6iWWPllT7+Kew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D3C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394668767.7404.3554865937850890824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de51cc042805b4fd4ba51a7538260011678bb6a4b9d15b751a1ddaee74e7c8c0
Date: Tue, 17 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673946687
