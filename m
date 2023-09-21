Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7563E9CA57
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D294AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695335108;
	bh=/BASeyzDFduz0wChNqUcUzUDRpf7jW+FxEIn94QiItM=;
	h=To:Subject:From:Date:From;
	b=aAwqrx7C2Kgkh/weKyPzvGIjpavydGn38e51BPTm6QozIWOmTAa5u6jdv4mrXD9kV
	 QesTChrbSlCQzBrFTP3bI4sG3EesR/WOIycW008HVwoJdsHZDkzd7/MXC8VRmVp3z7
	 hDDvcSUpAQZNibBBocVqMAoVGLKMYEucrT2mPXxwc6s8z6iVC5J59GG5jZHrhEgplj
	 PwD3VdCAWZexry5mg56+YrAp5JrzZeo6yU00dF6SaUgSr+CPx6aZGAKFhlH353gDew
	 f4qPgdkSB0eEPrKkMzSvC3pPqNXTcBbKtb0/lp9IHAy6rasij53FsqTII1cfGWHUH+
	 CdT5vgP2Q2ywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C0E7D0AB
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533510869.2408.14171503708259487495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b94f6d3dc89985620050ed4a86601fd3e8ac66fe5d8447d673789a8badfaa9
Date: Thu, 21 Sep 2023 22:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695335108
