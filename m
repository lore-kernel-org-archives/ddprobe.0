Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FE720F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ED7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667215854;
	bh=N4RMMV5ho8pphajjLV5SX01hgBanxR5aepXWc054cQo=;
	h=To:Subject:From:Date:From;
	b=jdePtCnIv31G3EyKruVV5bhLPsGEH0fHbzyLn/TAt//SMoywU4Tz/VB5DRc1fkphP
	 KmqL3RaQmdRWBWgBlspIi65ahNG+4wyj/WffA5T/4VQYggQYjm7ahw3cG+wzzSFBqd
	 4CslGOlOvclFYpLvRcB1ZTrBPf4Yrtb2XQjOce8ng5yAxeuCxQiNZifszsoEJp+yGH
	 eTBtdX+esCYFLVshSjFT/CXY+0SQrY8mlZG24L3xXdQNTABOITIz3jqcvJEEuEMtjO
	 sYA+ogZ2J7ErTBooucCkDZ329GntH/nNYbWeOzYppHV3v7ZYQ1oJws+s++iFraxsjo
	 a6PICLBUCM0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558E6FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721585434.17369.654542596024071019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad6d0992586769183b2f7736536bbe6c6ad66b6f1125f7156659e59feaa5b8e
Date: Mon, 31 Oct 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667215854
