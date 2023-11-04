Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC5B2CA9
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvdGMKsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D69CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699127896;
	bh=kfa7SEskAY+cA4z8s3LI2Y9MIagdafSv0V0NzqQ4Fho=;
	h=To:Subject:From:Date:From;
	b=mvdGMKsNyowrPqK+CMi6fI94g+f5TrG0WDVuOIpJHW4XX08tjZpECuZ2HLIYMZ720
	 N5F8z0nF0aC1F7LX43lCsGg25fjnkLUFQaQYtJGSFkoDEnQCcu1zoU9jP2ImlFLSk+
	 uip7ANhemBXS9cGLjztY3H16BtaDsbrxWotGWN7WK4Alep6s9krkqSyRH0sHPzOIi+
	 m5p3uX7sMDgCHdqJgYeQxzavnomYtbxUGP4upwS1VHP45zWi9pR03CUqsByzV7SGcA
	 p543mEqKxvkGzbHMKutpys8lnlPwM95UM1eY+XRAxGeZo7m1vfKI9qAMIZAXOipfYA
	 NOXJZsNmM703g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60507C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169912789638.11288.7655525447485999084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f1450426c2979e86af2a32f11600158810b8b6851280069badbcc915298e06
Date: Sat, 04 Nov 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699127896
