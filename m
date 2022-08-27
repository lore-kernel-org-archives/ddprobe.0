Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B5615A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79408C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661572252;
	bh=FR8FQp0R2ai2suhWEADFDJ0sEQ7ZLyEYUGiyY6GyeGE=;
	h=To:Subject:From:Date:From;
	b=kuDTcVBzKnCGptUu8Xf325TsqVSlfIBoMLsmK47W9Y8kEADb1wR7g/wxhFJOBU4h0
	 Stlrcf6t+4YUvOb9DsRJzb58bkaeLQOJO1Vuk3jVh/vOSj3Ttfuhiyacsuwy6jZpPx
	 BR1FM9c+hqgV3bKvFQb3RGUXnGd3JACJyhvRy6N4w47bKnmKiyyDPya/vj20yj4u4/
	 clgw/4rs1/unoOw9Makeb8B0c4yD31DWFTMmEjL21O2icgVPHOD7Agt6ZM/hy/RhMi
	 FfNm6KI4ck7Cr5fUXpFPiCEQrZss/Kdsu6aXZyGxele18NpVUrqOOYO2UBD6F4JhJV
	 vBgEPGawx+Dfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBF8ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157225235.10003.12053020497138441100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad78603c74106843d1592b87271345e6088e08910d53155014b6509901c9eb0
Date: Sat, 27 Aug 2022 03:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661572252
