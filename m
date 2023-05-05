Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8525383
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C38C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683307625;
	bh=F/Pv9L+Gea/8qi/Yu9LCQf+Kh8dmVMZoknuSZWSsR4k=;
	h=To:Subject:From:Date:From;
	b=cDdlHIncs7tAIVVYTcNWL6rhICY+IkS1vih0QAOqTL0FOprs7qCO/jUuOWGvJFPxJ
	 sEnMZkzUrrOiZRiB6XFRBQVwsgWsa/q0itSscypTzesKYhA7HphTBy037Lc4ZyRXSx
	 LPrlFhrCm8e9hNCDawfuXaJI99K4z6L3Fm7sCNFaRZBFPHnsAj04wp7LouyqnTlT1J
	 VIbYNQ/F1qd2wgwWM9fQ9Bf/jdAttyDO+h11LWAP6xRHJmrM6Hs+FgTlfvcLNjOPbV
	 xctnrdD8bq3MefcAtU7iQXz0xxODZtAIr2ynazWeWdVJ37ZmSsRMJSj4nVRUeiX6BA
	 Xs5056AblOi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EE8C77B7F
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168330762573.15510.10021021146389275099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996619e2b475047033c0e420f533f2b3a57e338a1b3713640a8cee2b845bbf8a
Date: Fri, 05 May 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683307625
