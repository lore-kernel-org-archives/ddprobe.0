Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D692F7B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D4EC433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666590053;
	bh=X9q9hrvw+FbbxDT00PmFLm+r9745bCrq1BYGyrYhxJ4=;
	h=To:Subject:From:Date:From;
	b=k6vF4uaIfo5DRYqipMKrR+1AXhKDMdpPx99QyHwP7qzpyyY/kp11j1aeRYu2i1GTB
	 +NPdQmJK3etUpYmNiT1leZ7hmQet49PGY42rvbzIYIkdiWspAhA4sRjNgnokJaVOj4
	 bJl+tav1m29B5+vkN5jonVISEQIpaD46WXNxcu1oDSpWlGeIOUC1DHGvY4pJURnkPO
	 /CKEpJGYtZPWI1HTDzgXMMyfbNOHA95+HTRKCbU6KJb92wa//AmFbK8uqvK/7UMEBH
	 oapotcE7jcfLk4tW5d+DYY9NTWWakfOGjPcMbdpwClPkoNHZzOvMU/CgsoB3dgnH5B
	 wdrlPhh/DqQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588D6C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659005335.10272.7829239274316688442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d96b2e6d2eca5f2d83acff5755a23d905143c2fb6ccf91f978c060e4092aa53
Date: Mon, 24 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666590053
