Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68627FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7231AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662787253;
	bh=KyT2Q4PyJOmVw3haZOw+jEAH/h5LnT8/xHWLqQ/1jm8=;
	h=To:Subject:From:Date:From;
	b=IYJGkYHsK5F/wODaBAhlSJt4l6Y9PlA8Y2dCXDJAG39DykP3u0xL4ha9zCSnj5JAI
	 UV0CPMNkxTXCLE8qYbVTswNf9K+XC2bjFQ8zc5BRy55RLeJvklrC59K3pxLpcIT3Ec
	 atqPgqxVzuyXsCwaPQpDQZ1xRGjzU7q+nOrrKlTwjVCR+9RaWy/vShgB820evwo0s1
	 mjJYOhLiNHfwdu8C0R192VP9hiuYzHGLRumsweGv4ioXNpUCGQXUFDBYU6BUZqs++L
	 iSXV2NbVA9iDGeBZNyiSXAobblua4dvmx1EBcYJqZ19wDTDZrEgpkGLlIeDVZ3w60Y
	 O0Mc/QLmmp7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B7EECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278725334.13236.13097171156489742718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2f95d9c0f8a1953af9ffb9ac9b6436656df8dd4d9edc4de9983369a33e8fd9
Date: Sat, 10 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662787253
