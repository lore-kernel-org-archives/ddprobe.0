Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B590C79EE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E11DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669327254;
	bh=7iWJz0r25yJKFMjgrqoMfyAOQKRJT/xW7FeMV0lLbKg=;
	h=To:Subject:From:Date:From;
	b=HD64OGcgBAgxof1l/OIoej+73wQin0lSq6EvQ4xIVLfua4uv/raRHrGLBLjtHIKzj
	 xxV82YL2v1ytFxnOVNeO94x9tvWCIOlpQKcoB1KzLb68S3oQSrN1KS9Sb5eUmvyto8
	 FfNW5F4x0ZFzGFXrDk5Vrn2o5HrOpZ+7XCGM16WoWMHmF9P+yZWiyQWHgoYxMEyMkS
	 mMN/iIHyMPt4RN3cKuGBz02WGNnIyVtIOt7b21KWXSte2ObR/hkX1ysl5aKW1CpGbH
	 atxOitxtMwU/s6Gkczb6eb9qTow2GTMsmMgyoq2nTig5IYWgJv+spp0YJ1p5iHEq9O
	 z3o3tdKNYwnPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520D8C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932725431.7180.9101317048600210458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0695666600205d7178a0289be81ef10205bf4d9dbc8b632ecd30a56388f9c262
Date: Thu, 24 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669327254
