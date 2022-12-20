Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91888F63
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED19C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671566487;
	bh=lji+GsmBfLQid7syLexllojHthwMcAkEMnyKso1gvWk=;
	h=To:Subject:From:Date:From;
	b=DSvBRJwcjfBDiYP61KWEXoTnIu0dzg8i6SAbX2vr1NpEE6QEzcH/yf3mvvhz1MJ2V
	 I4AAiCKleKuLjGOfYlBsQFgXAWNQM0CCJr39RJ7VHMHSiIDSRLfT1vHbctor8ACwpv
	 M1tN8MC5pmQiCZjZTzHnRI/TT3+dfYQjYeO7D/0ctqome8YdgZdpg54THCOVf/wxu5
	 HuvrUcXGVaPQUiBG5PR2ZZQ4cSCfNYw9mYqjWdd5nkFoPHfSq0EvhCN8RgF32nnuCm
	 u934mMzx/TQ5ItzxB+b1LUU+W18hbBSleD7AvCUNGUg9YxcXPqQAKTCzcnXFs3aKIb
	 FonGBqYJrXs1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBC6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156648738.15844.9028047697431574978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3078b3df1bce25f0b6692344dc6b87287940b9f4ae1208100f064ad8419b6ca0
Date: Tue, 20 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671566487
