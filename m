Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30B362A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F8EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672960887;
	bh=aGMu1u/k8CCGnJoED3VskRknJ3phyNcbPboL5qivu4k=;
	h=To:Subject:From:Date:From;
	b=fQV/OWG1vL7h/8SHnCqtGtxd7UUgX7gGBd58/mqW7aLpuiWQkIwY/YzoK78s8w9cg
	 e6J1pQPiHTiqWmXgSXFOmm+CoBdEYmGDXEmU4l+6d6YJVguzq66kmi6tqOrrwbjwDo
	 8al/NoqbL0jNqumJ46QE/4O7RcgZNMIY07kqvp+T8R4r73EKr+qyzdXDsUajEfBETA
	 WZUGttghJw/IjUBrYOJ/XX0oUHsHdBjc0A/t5QP5LiYmEvP/4lYpB1AH6SNZx1Sfgf
	 4McHPxF5KTFBCqaZsB8e1dHLMunN3FpNXEz6802S8RQdPq8+AaqhbwOH90VSnb1H6E
	 4p7KEKCmqvL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AB5C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296088741.12804.13013832968637561696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775e557d2ee2293df6a93cfc361e925fbe76dde1977f846244c042a1b15fdf78
Date: Thu, 05 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672960887
