Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39A18E37
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ2nt7V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EC1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700336896;
	bh=nhnCJyMvu4gYPAsz2iBx1Tyb3pi0jOfvCvdhbYmpJ7g=;
	h=To:Subject:From:Date:From;
	b=hZ2nt7V/XW54gqCuEH+f+uCS1yGq/VU8dZdGcewCSAKVDNogJQbEif6xaGB0djtjU
	 ir55lTwsIuJ7guQY/MGQkBZcGRjlpBn3mT3jyXQii4YbR0VFqi0otgpFRNiRsKTxjD
	 7lmyV4QnK1vVYqCC//FTJoQyDafNvPXr2vA1A50Ae+jYiLGq1Km5t1UN1pGQ3X2v5y
	 80Usdu5SCnYQsLibR9zLwMTRExbwrxFOYCbgsUejF3dxFsOGtf+uMWCFxJuU+1M/wg
	 HYjNG4q1NsYrT8OQmWbJ6LI9ZehJBBH/24PPE5v7HN1+HOE6KPGt8sgqgcwpv8hpdW
	 0PqeTkPWNK4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60389C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170033689637.20469.460182138068839876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fac3d110c056f213a98e6de6b3218289311d47c4b9ae5aa78fe582e62de29d
Date: Sat, 18 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700336896
