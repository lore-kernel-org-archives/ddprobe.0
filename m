Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D7101F8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FC9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688125388;
	bh=VX0e6Jzejssxpk1/h8eNudWHWKfWjks/klhkn/e+U3M=;
	h=To:Subject:From:Date:From;
	b=cC/FKozDCO2Wh7n/zZ7DPm3SKysVgfPnaDTCFAosHqv/8X5NF6r0cn/DO1XgIaRJB
	 8tzKFpIXF6OvwAhFaNyiuTfX3UORKmoYafkJrCE5w2q70DKg0b2DNLcEmtqCTfo5hs
	 aP4Od/0VJiSPDfPsu7RLHa/vZyuKJrKQpq3RJBWK9UJE36zId6LxNjT45lP0MY8bJh
	 0ME9tXegdpMMS206HXxqjRNxsamicVcMwb5EnYtbwK7fmH0egnaY6Sj8gixGz09OgJ
	 GyxvNQ321rObl1NGmeuRH3iirlL5giyQf/UzVFXQ+2UGXGbx2ODxm6bHsScV8n/uIY
	 E2y1Ypg6US3Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B229FEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812538871.5986.9356686127958358441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbc43f7686674be7c197ff73a795dfd053b506951eb2e15b1d270f92247da91
Date: Fri, 30 Jun 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688125388
