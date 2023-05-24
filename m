Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E76084C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4D5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684933505;
	bh=F/PxYmLZ+rRTQCq6ZPRyIJ+mf+ROotTKpSfCEUXfPe0=;
	h=To:Subject:From:Date:From;
	b=OnACDLcDuT37CanU8vBdwLYLkRSHt2HR7K0OMGxvHhwg7jc3InCSi4zYFgVE+P7TI
	 W34TcxhH+mhtysvJVXNffYL8jY+5Zaur1bB4Ip6fbJBtlkcpIZOBSWIAWoaXslBDgV
	 SG2WtqFVrU8UHLb5RaqZNQtEmJNPRo1VEI4I+ClXVEjcs2V0+2SLQGqHjWD7911ons
	 W6dFT/ZGT0htRysiVMquL7k5xeoZKyL9Olu2aA3BGLqdnHhz0KDta/Su/KHxS23ss7
	 6aVrMzsbg1ioKRBnND/rst1tknUbCH1CXzuOs/cx41KU5UvaRFIxWDRc/STPg84EsX
	 1aU7qH7Z8Y2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9CCC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168493350576.12882.13962640637185596472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834d01f79ce321c7f858a4fe560c7f7f0c6764b8092fb6febede7079def6a788
Date: Wed, 24 May 2023 13:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684933505
