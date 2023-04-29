Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB2415A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01676C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682729706;
	bh=SGFIHdxSuKJPvbkHmrEJhzu/FwLCNGsDNE4ufILd0Dk=;
	h=To:Subject:From:Date:From;
	b=iLm0Aq35j46ACfy3ZgOR/sudHbyZEOUXTy6Q7Prfk7rQO07wNgZFp5ET54+KYzBwJ
	 cY39EN/IFeOGYk6+CiNw517nyF6T+dOAlJhN6xNHv17IZ+pmkriX63xuyuxdi1o1nK
	 c18grsLTjle+mOrF1fn3O593L4Mu/7vVTGt+4yq+w7xX8xvR896yW4BojIlU1KE1vA
	 6WUPoFN/aP14Sl4B2KTk5vIqOkPCj67H/41PSAenZb1n35n+IwthpifQB9sRT2jKaD
	 8485/9MSpYoy2IB6isIKYrawev52jJZS2HeLkRMP4XTwdH6hFx2LIEQc/Zj08vjsn5
	 E7SmhTG69pCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D667EC77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 00:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272970586.2510.6483740024130161891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f79257d14bdc42c48de9c2ac0b729094362a591ee6f14f6e2915da189593b24
Date: Sat, 29 Apr 2023 00:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682729705
