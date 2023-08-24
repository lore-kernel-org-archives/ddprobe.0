Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566F224550
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5547C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692873248;
	bh=xuIJekGwpR96EBur2AE/Nu+PcB+ZWrlldNsaUNH7eDk=;
	h=To:Subject:From:Date:From;
	b=mE+Ph66lxSmDCJMv9hIyZBG0Lw2y1EwVMS3O0EYhz5+wBD/sIMEQ6QGDJIgLyZElo
	 QhaK575DBe4JxcMeqSl2bKLrNLWM1WTKnUucqVC1+JwBsDQqHFmI6uFZRAG4LN6OYX
	 Vf5Qlj2k3makGvXkPUiGjlb3dQYUSrg4Xgb1mw3LdkiG5ERpawbvMP0eJicKEWYCJk
	 yPK4R89KD5lgtJGEjF3alzScCndEA2Xz+MqbCIosbqWiDl8qQLpKUaCNSZpkYkkdvQ
	 Z9mGQngpuQ5quQvj6+uTO/MQqMcYxloGanoqrYHHaPfOs/BLko7rQx8/E7t9+V4ZvZ
	 DkMCn8V4K1NIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B5DC6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287324872.658.6086687039912058865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4fe90894d2894f65f3884a2c9bf1db8321099bde2f35b3f6a41aa28467b7fd
Date: Thu, 24 Aug 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692873248
