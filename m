Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22FF7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC5AC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667448054;
	bh=Pb1Klmm+8Fxzim42VM2jx6zHRXvPA/nyDr5RtcasA5A=;
	h=To:Subject:From:Date:From;
	b=d4lCNEmcx0Nol9+iGTvhsshL+InIYMHGMbbs1XdEkuRPrdbSFDYh9qX2B5mXKdWm3
	 kN4VXcIhGoEoDwh5SozLHgZ1aMN2iZQNfn3aCnaseWhxL3wMqJr+PgIbJZ7Ok9hamA
	 NzGwY5b07NC1q6UED1SxtNG3+Ni/ct5dMtXCH/xBeZLuPHmBdW4qEMOkjAbbx3gpRI
	 hsN7MHnTKLSFimRfg9Cz6EUMBGdLrhT+jle1q71ZEgeNETEn9ntaBzy7L2phXcTWzf
	 gKWVwsTifhsXVzRX3j+zcKY0y/t4sJlV/Ry2Y0p1OQMTN9xMlXGnSCQqMOiNnlx0oD
	 wKXxhoAYBAdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66512C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166744805440.19929.5826115002887592416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2dc128e9e8b1b05dcef8f6f660ba028f2b4b28cabf52486695ae24f6fcee53
Date: Thu, 03 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667448054
