Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD361103
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D7C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673002287;
	bh=WFQAGWL52AVwR8Xnajozhj8D2B1biFm7MAlOUxp7Oh0=;
	h=To:Subject:From:Date:From;
	b=fod+V4seyCoBCEmWDVl84ZylN02fIE/UKOeGyi0U8jX1U7FvCREf0YbL2X18Yu1cJ
	 +B5pGHIPYdnY/mIZfa+ro5yJ36GyAuJ2gWh2DycapRGets4jRa/74d/rbJFJhw8Ib0
	 PuIm5tpELOxQeOlpKujxaZ02TWAHhOOJALFLrhKv1R4ZTD1nOuVfeL3XYTr75eX8Hc
	 lOg8KsfGjoglCxgtT7Bp726axyo78t0JEAQVr95xpk35AFKadhFxFVj5dL/soVkgfC
	 L4K0uaGyEKgm+4WVCIhbNB7cAa9+8dVhuMWzwKbk60VA6xavOquReYRTwpzKgOAJDZ
	 81VPycyPc+pvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FAD8C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300228751.14404.6541994546381685263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db73ef0d737d3e82fa1eb3386bed394a1d0cd011eaa2e367b20347f0024676c
Date: Fri, 06 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673002287
