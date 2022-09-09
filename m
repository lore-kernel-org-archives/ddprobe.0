Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C556E65A
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F437C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662708653;
	bh=iX3tD6CTeXUSE/TdG3FTO2UZw1bEwGiO7A0HpqIgDOQ=;
	h=To:Subject:From:Date:From;
	b=LGJfOCEZoqfb9+CvJCBZUEnQsceDUk2+vL1QOUOhTs3JewSFYBPVZf976FZpuPs4G
	 EGpBmijdJuC1UOcN3O+x5fUpAJIUHuh1RrbVPAiDO8x1J0nQF/kUA5XMr8tf7Xncgt
	 XRxRBMGCegXn/T5uoSCWHzd2W/XlRfZPAQ/DNz+jK89PyGFFoeYs9HdsZuRqg2JD+x
	 neeTxp5HkrgaXBPPGEedEi22B9JWovhSs7VO0SWp3Bk3lM9m5Rz7wE24rD3lXmncd2
	 0QjoMVUP57Do2gc1z1LHfvSfIeyyf5o/Xc/FjWI5e6KTNsyrKawIBXC2C4GKsKmOfu
	 pQsLlDjl3x6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5359CECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270865333.2704.9557316146793987134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210a858a9124b734cbd5eebf73a88456acdde3403da75cc27ec5c28e7e178aec
Date: Fri, 09 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662708653
