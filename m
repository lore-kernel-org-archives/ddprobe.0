Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D39B17D8
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959AC433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683437885;
	bh=2rrklVC+dJRDiKqnU/VGs/wxDTpjZimh6kbWKJRuMFI=;
	h=To:Subject:From:Date:From;
	b=dzXxiKdTsN0L9P4UK756iD9cwn98EBonAE6KIM0IhxlpsC/vNm+Sq/MylsMSVyu2O
	 jiwwSsP/tpPp3bLigKJfXFyfpZohO2azPk3X0TZO4rfvloJAeV0rtQR9w1zekGkF9Q
	 GWnbar4VLLk8ASDCAKhcxb8oFdSiLLuwOv2X+EGFQZoPw+TUaZD8Fah3b2d0gDJqZD
	 WFM547ox7q9gyBNrKsWN3qmmq9et5NifeFKCmbi4cd6eRKb+P9igtJhhUrlLQ6QQxK
	 4668nvF4YKgRTanZkyv+OqQSOfxTFbl46h2vj/RpjhOjKXkVvi4SG4nN5MYM6ACCpJ
	 q54Nltu0MgN0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9339C77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168343788573.28958.1769025282276741720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c101a8cb9c5ddb6592c8fd5464a3887ed50bfd9236759409320259df0d6dae2
Date: Sun, 07 May 2023 05:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683437885
