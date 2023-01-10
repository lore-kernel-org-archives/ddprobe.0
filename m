Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6B8A92C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 942AEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673368287;
	bh=IDbTEKsSlU0hbyRpSLofYuDW/uNTuGJu8V+osZ6bwKA=;
	h=To:Subject:From:Date:From;
	b=KiDDrMs18oaHtLXgXmtrmVozbWLXFE0lCqECZqnx66n7sSv+hpvbi0o2irJI7+uOM
	 Dxy16RnH/nAbJaEXAAzvwe/NoHwl5lGjWCTUiTuXYGhjYNmSAW5Cd4giGQv9tyyWpM
	 ffjjDR57A5j9Wcpu/LpN5EEcz7iqhybIyyeM80A/2Jt/mfGOeJHmAS7Qa6SWPb/lLp
	 ygzk1WGJwfHuGMMuW455YBVAy48lL+ohdS1CWrQBrQYcylrHMY5SfSzTZvBft+PQbw
	 JYJyBGk5zjpG0c+PRRpQW6ueRqZ3m36iPU9Btqn2ggcIbDLCjYojgck4fiGZ3AEUKU
	 G9aDfxcuD7TCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC6BC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336828748.25801.13933392565040788182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8721d7b4a194b8a28062ade57a39afc8f46f2316e73633ecf0ced549b03b21c4
Date: Tue, 10 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673368287
