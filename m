Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3D10F6
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD4AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681780745;
	bh=yAPZ6P4B41hEy/En7zEOgETgnlHir3zRBZ7mj05r9ZQ=;
	h=To:Subject:From:Date:From;
	b=SdcGwbqFSTUU4EvSZGChMGEylGMEZuEXyX4P4SDByxcDKCLkwTPqVnIVBtAwRgazv
	 p4J+XramEf/7+Vxj0Tr6bNTUi51ru4QoIKOqnxypyrgJDf7mKBpU+XHiouSb4t3dz1
	 1zx9qtn8+Pk/AciJiheZLeehxz70vAKoZ4Dwz444Q0SsA/KD1wXN4VeX5cdj+i/2AZ
	 KWq15uq34HTB3IQqnEVX8qzvQvu2vLH0WnKSbrOQs8tEA2KObi5A9rtR/fnN7/G05e
	 wyYyboAN2sHD2+s5KNKDsWc0jrO9/ORbItgu23GAQHwc5QBF7xHDiu3zOfty4W/wY4
	 z3DgkqR5q46Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9AEC77B72
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168178074576.8630.11842134320578016595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07decd87a0c04bd95747caf4dc8c1d4b260d4910e9889db34ed9990bc2821bd
Date: Tue, 18 Apr 2023 01:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681780745
