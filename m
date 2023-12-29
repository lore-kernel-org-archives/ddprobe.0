Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F991FB8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5EG+RJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E925C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703828296;
	bh=UX5z3nkPiL4oAOBPSJ0WYvUrAhQqg30IRdmCCfnp340=;
	h=To:Subject:From:Date:From;
	b=h5EG+RJ4LtAqCgi3S2Qy40l2pzN4dgRBIxcYLZTiczxDoiJoLxiZP9BlqJ/nfzyx2
	 WiWJzmqFvdkMqYlPUySp5uuzyagGujy+VXpG++kfF+m+frIfMpPb8r/1/4oEcvI6wT
	 St0cqR8HbTWfPY8+2ccWZ1skRaypBJiuT64G56wAtYI1yofsXmrYqQ5V/rR1g2yn3W
	 kWegzoDzI3J5VGzSn0XcSTSGAnnMit1YJqmoAwTkKWgAISmosiuS2PTWGGcuau4xp/
	 VLDLXTI7Jy4CuadXR44U6I69V9/atkrsDiwA/nFF0rtKBYBstRsKs1TFnNkuH+ebKX
	 hGw5r0RDxu37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B5AC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170382829637.15603.4385310723538247892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b55d630b9ac6c7915b6d7e3a770860828637c20eae9d5f79c52f25226141f9
Date: Fri, 29 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703828296
