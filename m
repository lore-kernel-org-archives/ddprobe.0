Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBCA7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75939C433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662420653;
	bh=fhGPRmQUeqcvd1YDS5gkY/Ae04YG1gSg2xC5YP9YN20=;
	h=To:Subject:From:Date:From;
	b=bDsvEnnJozOvHWDXxWzEvXSshFx1G37dFMRpnR0tXNCP8PsFPmnZjjW6XVC2QVsJC
	 QRLNKtoh6elRLLef8a/sTui+IThEMOnvCghH/8LTu4TA3GPt//wx31l5BRGIgSWkqV
	 PTlTrLUKE8/tzVzAm7SIF065eamNEZKnS8cDuQOQRIWWw+UK18PmXTG5GbG2w4wxJD
	 6cx48GvJhm2oCRJ7RuOC6t/CRcP/ZC7PxRYAewLXX919XV/MsGmtXLUbUjjCedrFI2
	 yrhKqoifZIeNzBDGugHYLSYNW6rmqrO30uZkawjovRw9WNkVdZye6oeAI1UDStnRca
	 gTR9pc729zlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5909BECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242065332.2820.15551120532077101025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434cb74f378409098c5af3eb7fd984636ed1ebc1d828bbf2968b2daa332ad623
Date: Mon, 05 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662420653
