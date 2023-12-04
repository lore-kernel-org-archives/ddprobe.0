Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F046F241E9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4ZcFxWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814A1C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701708496;
	bh=eCRmOsZIH1INhqDucn1InJ2ndmr7zFOZOYS/J1l+hMY=;
	h=To:Subject:From:Date:From;
	b=k4ZcFxWYs3V400rwNHm7SLgvxcujEjdG2fSPb3+lSDZtsRhhEwynj03Oot2GXhf4D
	 Or7uQN3TOo3p8CPq0w1N8swdbwQ06ofGG2mZr8PHzKRBk3hCJzPCFKA4n+42exv2jC
	 rkmfnDs8rALEwHKSuyRy+lg5YhjyjB6vraX2cttxRT5FvWjVrynqiJyd62X0BjQvwM
	 zO5Zobc5rdNi+EHepyEwoI/dq9BW93a5J7psdnCELBqnHV6hOrTYRL9P6pD2mS+nwn
	 gjFqbddZ4NrM6+vUWS3m1ipC8H0a83ewYiED+X0DQ9fDYkzGLIcv9B+bm2SOEzz05W
	 kOXdQH+szdTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680F0C10DC3
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170170849641.16502.16808864372171247813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de95304cfae6a79cf933fc9a128032397315d6b0f9695e09614bb7e00bd8251
Date: Mon, 04 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701708496
