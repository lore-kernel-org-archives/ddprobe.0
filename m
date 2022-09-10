Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBC07F5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F05EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662820253;
	bh=b9p/q1MNzNI3pkPX5pV3baUVz7spJxCzSNVpq0yD3G8=;
	h=To:Subject:From:Date:From;
	b=WMYz8lJvUJpo8iAwO4N3EY/gJzAwP27ZiLgYdGjaYqN0OLlc8euAhgQs/hMhVIftv
	 rW8GfB3HQVrhzQiu1XbQjZr93kpcKQxk/y8/8UqC6eUdTbbLe5s24F05vf/wm8ykPf
	 lWXe4uMgKZ5UBbkkP3ZtEoct6UF91WBNnCB33W+40j+4hhMdf4iXO3tIIGSGphS33w
	 npIZ8CKafZtfu72zI3u8JE/JoySW+Cbld1qQDojScHIPRt9hmbLmvl/dVsFToqIjFm
	 4IswwKr3ZOd/Eu6N5/nI2bWDYsalP5ZttZdaLxDQYK71JZ2TnneMJ5kNS+3p01rHzH
	 nm6HxXjMiVVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B37ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282025333.11578.93223633019982273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f81aa50f89b9fc03abb57e001312dac33334eb9a0ba002ba20b7ab164261f6f
Date: Sat, 10 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662820253
