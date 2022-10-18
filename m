Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01371FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4BCC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666077053;
	bh=IcJbYmx0GVAuJA7ZLxB54mStz6iSbh2r12s3rFntc48=;
	h=To:Subject:From:Date:From;
	b=GtUUKWHJiBjqtktrUcs8yYDDNZkpGRe3SXqduwymYlA14qdkkOkv25utDd3zd7kmL
	 PkIBuk12fFB9WB0jhEjQxuxz0B0gpN69QXlEfnWnmvbo40HE0nREdJ4rbfsSkN42cX
	 ngyS1iMmV5ifpQ8/8rpTovm47MBbatntyXV3NbB559fq6YZSmWWL54pItzDyfqv3Y+
	 6wDeK2R3Ajbde22P7Oadn6SrhwIaOte5cmVdjsNsRcczd5ypLAqdJ9sXNkKjfAIW17
	 derU547fpLJ9Uktcccofmtu6LvIdEHAK8LzXw6E/RgfyGMXc6mE/CVqzCqVTi23U61
	 D27gobpnF6A5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558E8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607705334.8963.14829634347207930300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02811c58b40bfe181a70e93efd52bdf850c3c4411defb6136e1eb3dc3d5ebc63
Date: Tue, 18 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666077053
