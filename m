Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B7519890
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692306188;
	bh=0YiN2ljsLCX5F7B/4L92NC3l44CBYEmHdV6egRGV1qQ=;
	h=To:Subject:From:Date:From;
	b=FVKTz0ysS7mE4GEw3Z26hGFIxSGz7cDS4HDrjXVCgoYdkWW3+SW+N7DZKQOeM+nQ0
	 T4VOk3tk18+es8OLv6jT/A8mwTADXnOH2mkpM+L6T8PszjRywVWKA4gwTuFJzHsnm1
	 U3NumW1i28vOp40hP5NAuIIxpsyaUbZnnnWl2WWFu7ONSuvK4T2ZBOCM5m3zGGsmT+
	 CyKXZ2wx5+UfITv2PN9F0OSLgDlJs21KKUV/Z0w6CO8tk1Ih9dk37pCbWwqH0w5VKg
	 Qwk0/e3qeuLTSnzrr+tNTrNrLYf4Uiv64jZA8ZkmX4A47cNLWxsejv4FtvtP3YGO1a
	 3tEQDi+twtE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD70C5479A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230618870.22702.3910076230706077560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a00c3a72620642103c2c69a88b8012b8300fe251229c69d8c56df5090e679a
Date: Thu, 17 Aug 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692306188
