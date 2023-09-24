Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5257619B
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C175DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695524108;
	bh=bkYdt1equ1xmlrrhnp/etEPIhb5cF3thSde/ZIhzLCY=;
	h=To:Subject:From:Date:From;
	b=eNifzFLY7jAF7c6nAnxtOaPzgCQ5xYGMOd4mO0G/UNMgb3Ffk7eApqRUbzYSSdZSs
	 xXfnqIH/MnpSCUGVzB3GLSn+JYgcg2fVM31uZPeVor9tk38BN6T9HkgVgwycPZF/N4
	 E7DiuzORMLxodgxk7WF2cesF1chuKcgHJqtQ/r4XiPSoHLGKMhdCAXnvNSFsrrgH0v
	 ip/zISlRi7jnRbMdP3D7wxDcUW+znAh1B7W08wbD7xFPt2xN0dBhKahuMMiCoO4zwj
	 mgQAp2p1Lud/fC0bnuBvPfkC9ahyDCZueKKM2ZVrCMtfqu1X870yzbTK7PlD/qilIL
	 vjXLSI+HlyHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5474CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169552410866.16504.11705469949530947130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b69f6e5b383f2e1eeb3d89bdb81a259f6ddb361904c658a50aa67f8568f991f
Date: Sun, 24 Sep 2023 02:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695524108
