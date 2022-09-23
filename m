Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C197E15B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA69C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663895453;
	bh=/MmnlgLqij9LGun6REUOZWAWNxO3WsaPoZGmGFHL2eI=;
	h=To:Subject:From:Date:From;
	b=sbgj1Jzm1u/pqKqKDgZ3fphYoyM7LPOYpfTUfu++5fBCBfdH5ontdbtMRryt3lvCC
	 YadxNcxV5LHySdFyjQ2uwJPHS99Y+b72mAT8dwVR8Qqz3I6EdDJilS9KFmWxSCMtQV
	 FTyWO746Z9QNDD3zGhu6+n9ySR9oJRSrxAbFF7dSuKsU98qrYyfmQBBDKpSgz9xOfN
	 rti944rEXhUinHELM35XzjQBBot2xVSAUVFMKn/fxVI8xtS1T1IpftBLOmtisUBYOZ
	 tvAWqA+pisrKkcVMHJ3MXZYNhw50ftyRXGmodk/pFh1ucIeFtgRqw/WAobIGLMVUCh
	 9YmP8aKhJy5Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535DFECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389545333.2415.1771334578464117886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d311001c181eafd54d444be0bca0dca00479846cc3f7e5a7c96f9ec8d05c423
Date: Fri, 23 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663895453
