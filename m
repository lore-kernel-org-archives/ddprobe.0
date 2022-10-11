Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA9A15AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AAFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665448253;
	bh=Rc/tmWAU1bjurHt7Y2UYofJ/+b6e5rNubcIVhOlMGUc=;
	h=To:Subject:From:Date:From;
	b=qTHZ0KYg/1f21/nQ4D2PfzcIKdpEoiBAJpCCiXW8yNOi1YkeeIABKnRqs0ZNnu1Kt
	 CRaj92Ru1cxFD77n6vb3Okijqf/dxsfOrl7lBMkNupcCYh6MXChBa8baiirY9gjdzN
	 aPVEwtuMS8dbTiuMAWsUdVU9Eq88pMDineTuavbo31r3mZPv5no22ShAiUmdUt00+0
	 8d1ssDFwjMBlHvaVORWxEkR+wBmMyYMjuisvs/SIn3UVCWtI9i9BAKsDtbTIOIdLsn
	 ZtvYQ35o0E0dsYsdwjIZKHBjNX+rLTkCQX4mAtMEKqIr4Zi3vz90MW0cpPrjPxIm7l
	 NnMdCVq01N6rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500B8C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544825332.29429.6061753386021615963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dadc68608b2333f64f31d9626030967233e7992f6f251dd895afedb851e13d
Date: Tue, 11 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665448253
