Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CB84DC89
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B10C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690915328;
	bh=JZL2HquW/flb9GMRXZb4nCOiu6IHxsONFMjcWS6YgDc=;
	h=To:Subject:From:Date:From;
	b=KID/nN56F4CB9mTm+KmRaW0R3Z6txMp8ntJG3YCGZ4Zz1crUDsrP/bnx4fxunUgqT
	 Mwrpg/pMYiayiLVrAbh5X342L4lJ3CE+pctUJMmmisJNWfC67GPiUHAA6kjh10efj0
	 O4feBTapnFySK/ZKTYJ8chAaiVQp7z84quVYS6mK5XtAYmQzVs+51413jocAOZGYvj
	 Oy6Edh0EOF6UQuUWxVcoTZaOavuWDXhAC2Id66LroxBeyEW7eJfc//+pRJfnBWSbjB
	 Pd9Wl9b/0Dx+/Z1R7yJH22+BWl6Ir9HZzbXhfZZhgkq2Tie0VKgsLDKHLigsJD2nyr
	 zFgKxTKCOUYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F1FC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091532866.25457.9091038129393387551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d18a404e04f6320c6b2e5e52822c92cf2246fbccff5519c18865eb09ee4f145
Date: Tue, 01 Aug 2023 18:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690915328
