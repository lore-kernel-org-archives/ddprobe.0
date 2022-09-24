Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4E67B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFB9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663983653;
	bh=5wtmcC2hrvBMz4PhUa0yOxwIF/kmz45S5t4m6mHrm7E=;
	h=To:Subject:From:Date:From;
	b=VaA9SHewRwmg0p2JCqZ/kqJvNelTKOnL+6Bb/Mp8oqtBhyb9V7yNQiWpsu/e6p6zA
	 SetER+fa59Vg6CPKsVqBLqU/qCqGxjdNjOLfyq2FEviSnSsUWzaO1u6Tjozgb1G3Dq
	 BVwZ2oP7LDBJMZ0Sk6u3IzTPMnnRM0jdFzngem0nf4tp9/OttiZ41QWfl19JC4EsIf
	 rJh1dDHvPwobM1Xf9TdgJ4L7XGOPQw3PhYt7J5O15Wsp71B4gp/2y8pS+lB4pwkD0O
	 yF7yTOFJcLrtZ3d5M0IfX/kp8GprM15WgkpejLkhZDJBTP6ANvz+6iZeviFvN/RFOx
	 OUiJdJn1TCx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5130CC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398365332.23039.14912489299512260403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44dfa4b54fc0acc5ba6049eddc51c2f38df93e7539572c6223ca0b81c984eb29
Date: Sat, 24 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663983653
