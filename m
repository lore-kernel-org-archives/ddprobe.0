Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF125CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DEBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670947287;
	bh=Ef1ZaoBJTqXkYFBRbfeRuv6ufijYTyMgpw1pIACmwdI=;
	h=To:Subject:From:Date:From;
	b=MMSO8hWDwx/iWNkSPOA4Z0Xy0Avwsg+026xKgKc4ug+0ll8IMka3aMZzvbA1LvKHd
	 O9QvZDA0Uvkotsq4fLJ+cI6kLqrxGi24FmMhtDPrCiNLlD71h0e7KzJPdi3ZVUP7vV
	 bf5FuF67dRsPC4ABT0Yd2YrmQaz6bkp+JkjXHYKfhcyrTVxZmBt5OEErCX+bCo+omW
	 k93cDV1dmnIB7cR43MLHt77P97fVipvHpwBvjVhl5bjfZLHo4l/SbcBPVQ3RnnCLmI
	 VKLK0WwmvL8x5Mp5CbXgKL74AcfVJaPCCFFnY0kV+zmR0lqW1/rvmchhTAPOBfTaNI
	 Z3FjicWirBalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D85EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094728742.326.5829347406771132769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5697742e35bb3d085a4715536dddbea453a74e00736c34f6c13fdcb67a9802
Date: Tue, 13 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670947287
