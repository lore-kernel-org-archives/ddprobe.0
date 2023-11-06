Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD3128DCA
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X98MNDt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 909DCC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699284496;
	bh=fUVTYsHyWThhbaYlJYWZITOf0Mp6Y/j5hvTQRrxBCq4=;
	h=To:Subject:From:Date:From;
	b=X98MNDt34Dhldh+Kfbq5bsihh/DX4EJYYIVE+MvUWQ6X68QGo1T78UeFw1GRI0f0t
	 Wj3gmubwe8Gp3ZqDDw+OnAUakFoPaapSAQCFp6mM2vZwDQGcrMHcEervYqmx31Du2K
	 3VWSI536iVwYJgfRoR8A0dPOfQkEo3+/jbG65seF5MeGzPt0oNQTcoExPt9eNFTQo7
	 1oGI7gwI8uGZpGAQmlAVp7X136c6O4NuQIiHxiVEVYKqLOva5CY5KvA6ABo6vdCsKG
	 kRet/vJif7UIRPkr7fMOvctKarq+pQuFi1N2Fu0Y2Cu3rLkQzN413HpyrWF/xw8kiP
	 8LPJtcdRJ/7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7F5C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169928449643.20328.16474992227764026873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8257619d92f7c3273377e8343fa39e223268f1cc98d9acc0cdc7ac046937648
Date: Mon, 06 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699284496
