Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE0B3D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665768653;
	bh=8IA45NrWgURXPgr7p2cwf2LjjelbC6Q0wdWc/0wfl78=;
	h=To:Subject:From:Date:From;
	b=fVWtHMlcKNZnU9hFnIn01UFpP4T5miVN8+ZZ63JjAAxuWy9uwaiUqehXUmCaPodoj
	 k5p9/Fta7NSMeXF/9uau57vEiATQhC3RY4R1YEd3IS3TOpH0Z594lsgLqtcfyeBrWR
	 KX4fJ1kMQXhd9ioDcFk8WFsBbhsE+fvr3A96UkiyeOoQ2ZWTDek2PfYOTNQkOY2lhy
	 mSAhFJ6Ozs2k7X2BDlKa+JnyHDR4km07pS8ZiB9/nDZZvdHfykojKv9kid8n0IMyCR
	 XQpi3vBz1jI8ydkgTohkLhgYlJ9QPC8zfG39I/ojPMs32leGl6ZxUxNKdP11k8EDx4
	 fQtpgrydRJJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80A7FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576865351.17008.1730557117407935981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649777f1834e50ec66273e93538c92d6f8191d365ef0d8deacfe8b926480fcdb
Date: Fri, 14 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665768653
