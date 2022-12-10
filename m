Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11ED185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB86C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670686287;
	bh=8BK1gygNCeJpxyTAB3eNSqftavEuXp18xVA0Ww5zhgc=;
	h=To:Subject:From:Date:From;
	b=JA41lk2/mrBoj6jbCFzyjGJbLCp92w9+xXy9p1RvoeD8BAhkw9PpsBrv8ShMifiAl
	 XTIcqr+j3gbz9jPITr3TKhdOknbE0eilu3Q2qFOpEFCfrkFi1ZrJ/HDJmaE4+Mh0pA
	 gv4zxoq/lT16mWVIwIvOu8aGN4D0XJsQq72/veNf99QPolOliZQoYwrJQr56Sz4uDg
	 HKBKlNCmkUhICLgDBtRU1itjvBdS++3cMW7ny0dhEtBxI6XbKUSIWQKyBy7knWKKYL
	 cVrKhxa88ARuZQpiuvThqwXAd8BMojFgwA9o8JqdBwIz++mR3TqBr3oBrWNbewaq3i
	 fKa5DvSVTBPbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CC9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068628740.9096.5030031863996055202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6e937db631703ad5b813064e82a7d9c50560efb910619eb3009cb106b29b6a
Date: Sat, 10 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670686287
