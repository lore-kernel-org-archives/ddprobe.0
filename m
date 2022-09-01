Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17BAA3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB4AC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662017453;
	bh=jHGFqoKXQDhjQ/a+QIIDYO52ttmvcMuhB2YnaOWzRz0=;
	h=To:Subject:From:Date:From;
	b=TGLNpdu6+XNua6se0miNKcStIBm5pSBsnlDR256iAKsoMywaDPkLrgg4tqt/9nJUs
	 z4FLxDUdYLL4wCuiTo9y65AHkT03588AcVHcovN7e6+hdRAXQPJQPxqprhn9OBZcnQ
	 yQg9x7QszpH4I4+8H8Dex5U/W0lxpHdruyGQb80l5bfrAbDKiPIat8lcKUafUBD63k
	 +19afcpoh1PPp/NIwx1Fmj8TAClCtIIbekLNr/0AJ8MwCtADquzqlnWiuWMaa0xCg+
	 fA/+kW+QS3BpV0eXtggUm0BwNZUQXmOnLO6RU8ixQxyxvpapLTS4stEjZGppcLIQFE
	 e9AgxcTXaWYPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53101ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201745333.12478.11525698193639902388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067a9dce128a591f500b9e36b1870b978c1b0ed102c8c5f6210e22cd9b3fed2d
Date: Thu, 01 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662017453
