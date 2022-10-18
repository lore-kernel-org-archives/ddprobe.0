Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E6210E5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F68C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666074653;
	bh=X6hmnVTYOjtmQrPk9WkJL4LT6eLIefULydXXPiPx4T0=;
	h=To:Subject:From:Date:From;
	b=Ebp4EfJ6SDXnPYCAPywGoPwlCsjgYEmFrTozdHlgsTWtcqcyQs6NH11d+ffE1xjEC
	 gkpdfvKDHzU92oDM7MU8hvGluaw028H4EUJ8NRS8U2aqjVbIHo+sVqFwyo4DXDQOky
	 Kd5qy9WhOAkvnRKyb7cnVjSxXeeHF7yLZhuhLEx/S+D1+vtV3rkbp4o7q8yZg0tR9J
	 smzbrSS+0U5Tf1AbfMnMcJpje9kDVAFJ/mTiI871ghNpgkz+/Pj1Jmu4fvscrVfz00
	 LX/UKp3NJjSHZ1NWPLQ219pn5PT/+zBWNqs+qkhDgU7sXBRupLq1WyUibLSInnP1m9
	 s+xSYejsYeStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F12BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607465331.9579.10138484075978762066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a30f2d7b9242a565f4558dbbf1529e386f6c3fa78a85020e66a8a23d4ccb5b7
Date: Tue, 18 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666074653
