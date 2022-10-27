Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE9133FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C27BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666885254;
	bh=UjV6f6Q5bRBaylk+omATAmynI6c614w3/WInNvs91aU=;
	h=To:Subject:From:Date:From;
	b=sLLK9PbXZJt6hXnu9T888DOEQ7yySvtBr2uw4uT/rflXr6YY+m2pX/FGTbVLR1wsr
	 pOiA4YVXtyJ5lqMjKxPWnNAhrr/BxVJAHrVNSTpTo6r5NwClgWb4a0lwr6B90kl0Ix
	 pMI+azU75sBM3Uc9w+Jqy+L9qsmzOSKBTbDzvUiGFCWTZOmS2NlwtPZChCS+XmTHT5
	 +fRN4C0YRVmWsbEhiQDKb05jQVL5AD+jhIn+G0ii6Lpnk8IRU2SHthD/lyprZ322WZ
	 8oHvsrMos9itokVSPUbcbKGOt6tRCsKL8Uzx9oZnhB3E/QeTFBJR9ySM2lrCn6mSl9
	 57xCdO8To5dFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A80FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688525433.17970.15953645891566570813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326b5dc1e4585f783adadfe3809a6cb5056226fae5e07a9394a3ed0cf126eac6
Date: Thu, 27 Oct 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666885254
