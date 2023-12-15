Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03442C8C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItGzZbBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74648C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702621696;
	bh=WsBZl/4bUnaohDkDt+Gbzit68p6AGVtKEcC7tkKHwsY=;
	h=To:Subject:From:Date:From;
	b=ItGzZbBOtrgx6wqBzauOmo0cgz9Xyv9e8ghkq7hZo/PEjP+IzUf7qOjb434rMEgL4
	 DtHjPbov8xrhBSrObXNSJarE2GDTedXHMbIljMwzBMC/MaJuABNy7qRl01ZxEOXUkn
	 uvg7d4Bl1FGCTSeR5v3+Jisoy96R8OhrhdaYuvyriioYzQSRrASwQ0S0uutog5UmIr
	 w59kpY92uMi2bP1prphcyCw5dEUv5aJ/zWacIrSmlCRuioiItrdxSwj4UnfjjjxDyA
	 CVPjNWKnwdhC5tx8ybtWXZWO64+hiegpscFcAWpO93GxEDRi3Qn/HleDWLPdsmO6L5
	 oJU3SsCzn5o2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8BFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262169636.22542.9582874915377578290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017a194abc39a3df69da589a288d0474256d3804cc4b67d4ad493cb65fda57d9
Date: Fri, 15 Dec 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702621696
