Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB4E100A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 09:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62C9C433C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 09:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689239348;
	bh=aI9JF2StSOwq+Z7JGsBRvYxwBMuF9OIjVgYgIDI2Q1g=;
	h=To:Subject:From:Date:From;
	b=stIsW7ptcZwcCxoTFHkvfDlCIQCfzjQ1XSnfmDns7OgXNCohIP/Lp/MXpQgq0dM6W
	 njd//q2jrCIXQPFmnynIY/i8TO+DWiwjlB+VFdJ+sb3KTRhWHqI7rIPF4VEzo2Zjlk
	 2EhoJkiLHdFGIO0QwWJpQTNcfkAIsjNfFfGJebwjBwnaz9FI206OIoPhdgOmYaQLA0
	 TX+zY5bhAwbTnBGMpm1Rb6I6UPGNIPzjHX66h5haz952rVETyvHUE6N8j738cBvSV/
	 YPXVEDQ1HUQJ0Wbn236eZf66lqzmAeZN7tl4Q8SDNgJ1nn2DAVAu4q/4oujYtNV8QM
	 b7z70nlwddNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8612C001DF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 09:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923934868.10588.3987813656775116655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f107aece685ab461b0acd3c5a43ff4ac3126f90b7d4195127a10b49d01db3210
Date: Thu, 13 Jul 2023 09:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689239348
