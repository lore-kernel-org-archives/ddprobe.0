Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C650A7B
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D501C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665965453;
	bh=pMadC1ZeYxjt525sag4yv2pdYLV21wTSqnMwNfLNSi8=;
	h=To:Subject:From:Date:From;
	b=uBuUlk13w758KWRGsAOtdbkkeeSiM0s9p8zDNCYu9qp4VG7Qn9xgpAGPoauxe4NQW
	 9kVS3+XsCl//YdfDATYQwltiFPMWeo3hD4IecovkMYBPHn51pjydErftw8mx9IWy56
	 TenudsnPEhn0wMrTSeLfs7kdOBDU2RVeSPvMuvq1Z4Wv1gztJZAxCvVsy/FWYnZtA+
	 YxKxcvf2cxeW3jfCsdIBIr0vHDeac5LKd6zsGJIiqm5cEKm797tInh+QmdgXp5v0Wv
	 b9CfmX47aUsmye6ek/rldx6PWKacolithab6RO3LOYncvdN6m9eMJIKQ64yenorCkK
	 GDPG5jZB+DG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B5DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596545332.25911.14477196290030131401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df76e9b28c119e848e895628260ea7139237d2d30d195eeaa21733c0c980391
Date: Mon, 17 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665965453
