Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DA9BA34
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7668CC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667606454;
	bh=5C5VTolcP+rDAX/HW5SeGEALAcXLH4mFuXHe9yqzdBU=;
	h=To:Subject:From:Date:From;
	b=anbO5C4VwywmpYMBfFjpzmt8Y7Ojucw6tvceDm5cvhFGH7ItkKUVnjOaoEZ6ncLnQ
	 PW0waYzEqo6SvDDhxb/p+9rnyzRcEISfPf8ydJaxHzTh1PA42jBaUIaR2dQB2p1eh4
	 sLihhwojQt3i+ToOOK6OrWoGXXxj4js8+d9GiHRPV9FMSL4lxIIucEX3NsLujxBmtf
	 dd0wchu5vhr3J8mm7z4r97UW5rBaeZ1j763R/Z4RiKU+KjeFpYRIHbAH1z/ruGAI26
	 oLPi9i+Zrn64JOrgFvWxr1xoO6El40/YVdPhsLgkbhINuFp5xIUq34e2BGxVqrspMg
	 eVVBVjNn0gdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A93FC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760645436.9171.1170384496873233938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0994e0e66dfd90d3a2b97600db5dbd8470e2629a65a901a382782e9166df0b
Date: Sat, 05 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667606454
