Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A48A4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70901C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666746053;
	bh=KHXAOLSnp7ECHVd/DTs280uPnu87Yg782qYuLgyHX+g=;
	h=To:Subject:From:Date:From;
	b=DUV18DaISYeecUm5Bze8fIPoi3klYRB6ifuVZXNFz2FdApZpxIXOEsO/y+BtCUxAS
	 Lp3lGz+pRlyC4WYEAsm76S82rVmJyKz2sqgUme9gAj10r2P5RtzyKcfxmSb5N0Ne93
	 R2IEq2SSvbS4NornuJL0hBjAcRWylaZ4iko5h1SwjxaH1pbht6XBWMhSuOVMStIskO
	 zioa5McdxUv4B7QEWpfnZtsLUX2v6AdDl4Pe8VZUKC+HY+11dXY+zp5k49dbuOCMtm
	 EjIPej8sjr8MGWyKKnHD6cEwykKEqUwKhg6yC2V0JA2F/jMqnCjUIKzgGjqzJikX7q
	 fMkpJqkwjH2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56015C38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674605334.20400.5793272590438886722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c494ed2f96e6ce91785f15dae0b7519b95ab50977778fb0912edc6799a0d9923
Date: Wed, 26 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666746053
