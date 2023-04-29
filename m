Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9F28EE
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D853FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682763305;
	bh=6qmK8vKDYiD1XlgrDVZphjUODbamMCL7ZlW2ohTdrUo=;
	h=To:Subject:From:Date:From;
	b=Y5ZBDB2aK4l8h/EiyzpgTMA/kZSoJLMfKVLd0JM5dPCpMuFHZgpovFBIOqCmXFs7y
	 IOQcziQjLxhPRvpWPkLL0Lk1WrtkegCRxJ7Wt2O+Wdrvf4lQipPayJmIuQFXmB0sV0
	 okepDzpXF1d7Pnz5A8JWCfTsfR3GWfUbY58hH7Hb+V9s3TSRBnjntGpuTdZkDjHN6t
	 kjDduBTHgbjuzvTU+HWtCCrH/mv2rvdkI7v40g3Q0n6JIydRSo7ShZ/rBzuIECDjtB
	 dCUmJ3ktfi1Qk3CA8rYVmxV2EF+p1eEkmMxhmwpoW+4OYQ2Noom2pbq6YCDro8pVIe
	 nlLjIXLfhzd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8494C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276330574.17543.11680870421594843735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6982f4db24ac0d2b24bb3e23a5c3778454f2bc4a5a7591e51b3557726dcff2b0
Date: Sat, 29 Apr 2023 10:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682763305
