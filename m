Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB978C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB9DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670451054;
	bh=lmlS9EXk3Y+RFEpdJ6aMBIP9U/mOd2Rw501HZVaUA/Q=;
	h=To:Subject:From:Date:From;
	b=hyhWz/h4bZB1waZITAjVucoeKUfeIUrxGkWR0U1HaeXzSClhmcr+n95mwwGV01hJ4
	 Z/iLjrHHNQmnAon1HLuq3Nz44pMM5kQYUiXYvmdMbJZMRFPoKbGb0brxV/UVmw9iFU
	 xvsV/pMf8vapBVmxvP3fnvJOShuyNv2b5n/Z/2wdkm9Nc8VQhMJ+PKoP3ZSDic9+0U
	 LIStafj4xnSYg4LOVbKEvNPchDA6UCZi3v56LcGlzjgBpFAzIvP34qr3DDo5SLT1fg
	 wxSKKqAsWYIbHQTs/2hkiWTdH/PJ1Ubwv7vQfphTi72i4CwHFX0fNYEa/fV6XK+0RO
	 n7SbTrIPVZuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57141C63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045105434.3262.5976612088178933741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a543d2688ada4e41d8da59758f5b50d02a096f9824a6085f001b8490dd98bd
Date: Wed, 07 Dec 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670451054
