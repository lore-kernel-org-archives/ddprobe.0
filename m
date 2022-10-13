Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21394416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1CEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665688853;
	bh=Oi/9NcsUppvCsyEbHRF7Fx0liXBEiRmp6ylt9kxM8YQ=;
	h=To:Subject:From:Date:From;
	b=eRmT77FgbomriZBNcyJsTTVb7m7egtO8q8yeo2ESXhbErnrjFIb3dz/QS1WGrdgYt
	 /nDWJv+iaWzjC9nfSlLH2eQKUo+XSPZ/aJPRIZF12Y9Q9YgjqCMsLTeIz0hsXPvZIL
	 zl+kZcVWwR61FaVVjefTDW68LsO7tBnbodNcXVkCThgQ+RyA+ApGELuNHzruJ7krZQ
	 K0aZBFWY+LogcyR84LQfa4MuKk3Y1c6Nj8rYOuNPfWSEBh5BClIXSgBuN0I/afuh4G
	 m3Ki9wX+wk43IlqMz7MFLWpIA4aeFmpJqXumGY6xOkE4yxfvDYHHJS2BgZ233rEoLI
	 QTYqRyudPBdQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54054C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568885333.2432.17419231808101563796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f469cbe9c68780490cda6db6a22d08e0b1ef6585e53c94fb61f32bd791dc16
Date: Thu, 13 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665688853
