Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C240517CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75100C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665559253;
	bh=R6bCapyM9z+Jk3/jk9lOv6lhnWUEDklgaWS6F6mm4Pg=;
	h=To:Subject:From:Date:From;
	b=ZbPR3m7R6NOR3Q8FtPtSFxG7cGPWfB1fjkclIj5s2LvcUYyRn8HzIB3Siw0/WBMOg
	 ZJYwi2Re+2bbfOILNWn8+Kd8PmDpSo3Wa1E3kkyMpdOlzNmKRnm12RJrRIOgusZVaK
	 iEZlIpaq3/OHolRSid0NMutTaUzEFaDgRZmxPo5QwYg2ytwSaV080pB3zvPFe3EXWj
	 lJJ11oeSHMLqzA0p8zh6itmmG8uPM3WJzR2eojC2GOySMXhlyy2EYLBVUDGia64qZ2
	 u+z5W7I0snneWmUi+dUEFydRf1Mfk8AJ7XwJsO3K3ummHTnt/BlrIbkYd8Z1tcb8L8
	 DoHu4fGdoXunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A96C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555925335.13216.13654427196082123884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c46c2ce06cff2f418c52cdf15a3daa83f5e4f6bc30bc60db64cddddf5c8b37e
Date: Wed, 12 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665559253
