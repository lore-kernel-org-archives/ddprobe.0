Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6283F7E
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7CEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678852805;
	bh=F8yk4a6Qy02Wqa9NclbR8DybJBffDWrbt2ewTw5+6U0=;
	h=To:Subject:From:Date:From;
	b=QAkjIIc1dNZFYO4AeEt/WjUUodl3wTI3+JqzxpkSeRCCrmugOzrWhu+xoIKRMEUxE
	 ih0AdkzAHXNKH35VDRDWXSxAq9c7yUkZ2TTdSQfbRCQRTPVDEutGWkSvcwhF7qENYQ
	 PEnur1Zx+w9QFbP4D7MlYVpl2HWtRKuDNb94d7fVc3aGIxXofUQfxMbH5EVvhlGAl0
	 lCkN6pNXEcUDgszJes/euXDPe7NuaUwNvzTMMN3iKHUMO+9jAD/+E/emq/ffvlIRZ2
	 msgAXqlEV+hmYFv7na0X45j16gM2T/nGvsdfBMSJeks9DWvcieENi188SJBfzPJIoZ
	 DWNIIwfr8gWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB11C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167885280575.29836.14088880010306541162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbf81ab8c3c3b3698bd962ec05736cc1524fc238feb1e5bb6a519ed632960f1
Date: Wed, 15 Mar 2023 04:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678852805
