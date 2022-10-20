Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35F315D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77108C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666276253;
	bh=talcfPMWzyStXNEwQvum5sFYUxgy/HhB6ZxVcf/MsYA=;
	h=To:Subject:From:Date:From;
	b=FO+Ek51xVDlM8abrFJyEGe+NASx6yaIaaYu0+g8P2aJ6FrzCG8BY3lI/zGVypmL/8
	 uu4SdUqwtVUVccFWyRk/1qA8mnFltuIafDvyW12Mha4HlABTOyzTa5moXamOUkeXsN
	 7JfOmeKn6lIe6E12ARY81GpkW6xmx2T0gH0vZdNpK8LbsRdafelb28yBGBX8kPRFij
	 XRN4mXG+VVDoNugpt4Gvd/F3a/xxShXq85kjK9cZsFXc3HfOUSGUTDgn+5caqkk3hM
	 oTVRoiJDwz3nNM+rplL+7KPxdXDPHWPszC8h/xHohx1B48auUneXm5vTMCOzxpC6Wq
	 UGvjCD23x/jHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D43C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627625332.14816.5759113361809802692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7c1c25de455ac817ab17f2dd02fa7afe6377a8a7e1e710d83eb6cb953cc642
Date: Thu, 20 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666276253
