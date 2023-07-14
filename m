Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609EC125C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6654C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689330668;
	bh=EdVbm29OXld+UpHZaHJEBs9BE18d/BCyOsb7gEjMXCM=;
	h=To:Subject:From:Date:From;
	b=dtYXL7H4YnhdpVMwmxV51T4CRc4AGP5ucZLugP3GBxN0BWg+lG2IomM68JQiTI9V4
	 NxRQdc138zfeJrIPzn6Ycpv+s8UtEeVxxoSQT5mYrBvDgAIso0n2uEkaLjKzdCD7D9
	 4Rr10X+iPE5aeFE6ndTfu2T65P4aNykGkMBMIq3kvUR5nuQqpzq39i9VljO971D2OC
	 eT5ySD395t0ZHBSC6gI3oDQKxhK95fuXTRUdodvFRB11E3pFXYST15cMAA54t2orj5
	 6UPvE+BvgEcrAwuaNnkPd1vY3L/B+V6sV+rPHn6ib3RYU6v6KfE3JN5cTL+n5O7Hos
	 eMoFGLUn/m9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7426EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933066873.948.1585099113520584499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbfce63eda5f83b85ad7f5fd53347c429b585f5c655ffb65afa36a2ff34240c
Date: Fri, 14 Jul 2023 10:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689330668
