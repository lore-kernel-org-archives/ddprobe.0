Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A4A17D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69903C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662476453;
	bh=NKoBzGaAJeTOQuJbDG2Wf7FynQGeJebRp7pmpEOX4tw=;
	h=To:Subject:From:Date:From;
	b=buuXnArdfsFAM/rhea28U2QWCOUQzkDUia71fy3amjHqCwcj+Wppjuh2y03/V3Rqn
	 Uh1gB3hAGXHniQGr3/q9mQdo5t+yqXXLPdppJbDy0etgAtycm+eh4mE50AfhIP1lH7
	 0p3QbXgfWFvuQRV7u3w+MoWuO9Gsqj1DGMx6WuBFOC2TKJ+7ow9IslVQfmNukQUnXl
	 KuWOr3PwpTwPm2qG0/gaxepUjiOhtxE/DA2POW4EMS6tfRogCKNl9meVEHKhwKLBsR
	 froGV45ZOZHe+X8FtTsxN5BvinXVLab+XV+KjJBobMhfZDWfyeQTju/hVdtUaxNLTP
	 oNxI5K6nOmrLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E59AECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247645331.3740.8642942751819360670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb13aa9557971b4bcd38f219e204f6eb3fe5e46718dc4e4f8e0d9da44cf60f1
Date: Tue, 06 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662476453
