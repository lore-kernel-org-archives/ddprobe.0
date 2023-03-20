Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FBBEC2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0C7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679286425;
	bh=eq0Ls2Anb7KX76c+AfGNWA4+DwatsdbQ+p2FUpaGzK4=;
	h=To:Subject:From:Date:From;
	b=jlAzqPBFLEQXzpV3WIaRDptYezK6DMJJ/eE31dW3MrvWXOWzMTHoV/ArAf8dyMfZE
	 iopC4DUO10YIu6OIBnLoooBaBNk9JUntKHGg0jyUly0NE3SWsjk+20S0KDr9Y3Ufih
	 OcbUghgilbC8K6qNdpwz125zdIsQWPPymspM0yHwBln1QDs1Fo1s7FacP5+xcyJ81f
	 DO0hKkR4Oav7tRYm4voQFo5ThzxMc9Q2aRBJfiVvBhrE8hEUkcjWiKkC48QwjU4nqK
	 9Sia1ggq6FV+tSh2Hq1ryTie9Kigo6BPrcILhQtBM8oV4kBuZ8T3PWEBz4sw5mcwxL
	 4jiJ3dQULzBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4835C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167928642573.30176.13986616849702692319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddbf36aae0ac79faf3fd9db81c88e7d15c3d6ce78e917cae7443f2deafff96d
Date: Mon, 20 Mar 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679286425
