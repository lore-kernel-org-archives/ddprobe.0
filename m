Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31C1A5BE
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6701C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695239108;
	bh=5scT+XvG4+wrZ6Lx+DspIgWOY7fNZGlm2PdViQpj2Tk=;
	h=To:Subject:From:Date:From;
	b=JmLkkR/YcTktqFd1LhcHkbIasPcgqgntG0txnBxqnFxD3PJWtGb9jBpVTm4RX5Stt
	 GUZogIgb/7WAOxA6sxpuEblBTY72gQmWepJpfAZ8Z5TIOUbD0tY0ViufJFEvOQTp92
	 p5ZWrr6qy7wKyLw9fLoSSIz2RETtbq9+HxjNnEUVPfEn3xVetZ2+2BwB903hKIPttM
	 FG2cxTG+HVMJq/bsqRBNxVrPFZr5wlh2eidqTZjI6OGLCoeQGt39eI+p2IFxIMZ0Sr
	 usfRJOZm8umj4lqg9guX30zDnFzK3WXlKban/DuKjDfcN1sVVXHdodfBBru6BEkIdw
	 QWkg72P2doIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6264C04FF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169523910867.12939.5329604551742865455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3115c48491f090dd6821a5ec7d41bbcca796969c14b3fe326ed9ee66d8d8f2
Date: Wed, 20 Sep 2023 19:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695239108
