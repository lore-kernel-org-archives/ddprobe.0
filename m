Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13A17C3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 05:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D898CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674971585;
	bh=xRITKcPyDAFATSmXrJrewC4mBws3UwEIAOQ1hapixTI=;
	h=To:Subject:From:Date:From;
	b=c27DIxtZ6fuTAVgrrrB4xuTYQdlSs5wSu13Wrns5lZgiEjdfNnxCseOfUwr/9yRMw
	 bu1FnRE6ogE8FxoyZ41OFHw1D7/qVvbLJu3yrBt6Fuye51IUC8k6iZTAOInjwIUlmM
	 JWaeh3Kdm5xy48L2/FPcZfHxESlEU/F0GXu4Zv2hbEwdo0yZYQxSdc7y6DoQHYg/g8
	 cGtsUCTN9z0Zgo+ye8yizaTGjlG54DcipYIONtZnsDXYqgMLyj4s0Gmvrf6ry6dPv/
	 Ufd4zjT4tvSXb1Z+o2zjvUWWGCYAUUFgQX0yauUg6nencX66mnvIbt8lvC/6F2AD0V
	 2AQfUsBdhr1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD894C61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167497158575.991.4894304745312562818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb5adf8797b3f4e9e626896aea28372f763f3e550a44d86af3623a118332e5c
Date: Sun, 29 Jan 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674971585
