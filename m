Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD07E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6851C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679967185;
	bh=jYVeCEG1UXOgkANess8c1ffAwD5jgNJm7eHeVCAN05A=;
	h=To:Subject:From:Date:From;
	b=Zx7XkfxSIW7j1/g3esCY9bHFC3Vz6rnqh7h69PZ5FidQWVWwPTFvfoM9u7WxQHyyw
	 WmaClQE18XFy82y35wd7nGLQJuu8ycWm7r9SIEAlh2DXZIbq3DCyNjX/rMtiXEYOwV
	 z/lcxzNI0mc9uzXEFJ24ZQo1j2ye71iVQmx6kjrirVOGFUpQ6cuEpejUwwO0Ks3swu
	 WxfT+72BbtvjaberNfHntYXyBbPYSd1g4DTGU3p6ijjVAkGMgl3I2ijsOPh8e62EVA
	 9nYJn0E7uxQBEHZ37TCEKQKKCu6t+hV+arydikIRhKb7A2JgtPdPUDwBbTXAe57pc8
	 X3LqcjZWgi3VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A45C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996718580.29229.18421633130932065122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90187ca1d90647367a02479635ce1337994719a3a7d3f0947f3d84209993943d
Date: Tue, 28 Mar 2023 01:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679967185
