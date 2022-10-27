Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0687B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72585C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666846254;
	bh=kRHPpRKPEgLmJ7rg78/IUrPB2cDskuwe/6Kyt/8Bj8Y=;
	h=To:Subject:From:Date:From;
	b=guF9/hts1QZ4RDJBywi8P0TFaJuHWBrzwO6t1gwLUvDQt06YmqNCMolKQCqaz35e8
	 SZHVKrr5plA29Mcb93X231/+QPcDCGm7LwhxUww7+q2r/IMQm6Wso5jbogVcp1UDmy
	 7E6ANeDCHZFRnLLZBnivw1sxwcgjxPJf23XkdV/DRWFt2X7hVeABVBHG33IqnB4apP
	 T8Xa+nS8Zxp+XLuiY4kLSdpWpnJy4tGimFCp8qJ5vNzzbMIicDjXB7vS1Y+t7/5XG5
	 S/lNtWtgArhq7wDIL7WlZdGH4lZC38lMFVIgmMOPxcO0rAVkXOx7kMcZSXRmPRAW/j
	 WKrlJ0lmRCfDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52258C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684625432.17373.10664733597130241569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a951fe42446059cb90cabc0707f27083756ec0b633c0305c196c045d9e1740f8
Date: Thu, 27 Oct 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666846254
