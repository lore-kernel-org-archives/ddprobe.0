Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40A3185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79175C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668084654;
	bh=gGXn8/tirW3FFj9iqZHQXUBieVQdo9rBSHYCJhyMDx8=;
	h=To:Subject:From:Date:From;
	b=fZLv24BRynNzmo5DIRNgs5jsI0eNU/Pnmw1PXBgze8SAyVFMmL3crT/k0ouu6uhob
	 amW6uclm8opiGPeIbChmPt42JT2cOdJjOSKcoAkPEY+dgGDJJhflDabFGPmipKr2WQ
	 QbLC++cGNuR7BaoBHbR+fUh8CvDKqVysurkEsq0+xB/UBww1bBSFGlae/Kh0LHE/92
	 jiSBS0LPHH9+wzTn+2Qcg6ghciqYhPKSedPLt9dN6ijT+3SP5i/10y2zIDnIXHbjqZ
	 ZdtgYEU5cXBbPQaFNOL5ailFRF0BnoH/LtzHmMjaDtBNmbKI+ItfhV3ubryutuFGCV
	 mJX1w0o0IQBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA26C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808465437.15236.12094623909130332263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9189b84396ce46befafc1636fbcabcaa0b7ab8a2db58114053990c04b08942ab
Date: Thu, 10 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668084654
