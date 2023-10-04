Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657A78478
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 10:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB58C433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 10:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696414568;
	bh=5guBgzdufYwq9R5ak13NGRQq0j8mYqiGuRX3IPJgsas=;
	h=To:Subject:From:Date:From;
	b=tPgr79MOM8wVB8n2gCOi3TXOHwQISjSDkajm9OR5Hzhfah71WhKAjQiI+xRh/2TGc
	 qV0JjyEvhdCITMU8mqB60gDnTPMfdyQqIizjwEAJgqUv2SSS27y/cobXNiux0bEpTd
	 fpflnC33YN2hL8FgGNme7fg8zU/M1BSs11Ki2sXv/Oyjsku2YTUwZJopxUB4P96Z0d
	 rf7KhPrswCRbZP0HCyoE3xd/rn3Dy0GjIebiEqEXVu4Q2NAwXRZY4VLWMsQ3IXztAS
	 hKcqBPFWGg2AMFux9FlUKjKaUiG+pDM6xP6nAIOPxzi9rUZNT9QmaymldwFsTX1J9D
	 hcnoefBhzRUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8918E7B5E5
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 10:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169641456874.19691.876003944732940775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14aba754b2e0063131783493d0dfa00170458f83bc5add312beeca955acdb1b
Date: Wed, 04 Oct 2023 10:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696414568
