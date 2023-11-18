Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF6E13AC6
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h34pUReH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D44DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700322496;
	bh=KDdmv/rArkcX0/oTuhFiD18GgZjMiuP2Bi/2N4gztkI=;
	h=To:Subject:From:Date:From;
	b=h34pUReHnup6eSg0qmnMCwFec7bcSoWtgm9bWGWDU0W6iJsjigVaJ8HLCwa7KSJzf
	 eCEXv2c2GnF8UqQrvY/F2M7q8Usyj+WDUss2zzhDoNWvM6M2hm8CEjoCJZma3vlFIv
	 A9jfGVoX6z8oWfEDdrEr65JFjNbc/FQdLYHm3W4H+QWFogdZNX6IJipa2mHwenz1HY
	 2NYMEjUCuX6MJPOBZwed5LVapLi+OprVAzYIzjndKlTNoV/virxrSh7PDxl5+RgMqk
	 6rLzZdWh+u9tzTSheP79/nnfTRfrpclHynolLcZ25W4eMU0XqVBtntdyFb3NqKRgBB
	 p492fS2qSYRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F58C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170032249643.7597.16736936025731886537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d17adedfaa270d3f6da3f8fd258609f81ef336e93db22dab682faa76ce1ee2
Date: Sat, 18 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700322496
