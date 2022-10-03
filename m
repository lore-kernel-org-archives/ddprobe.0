Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB4F28E1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70542C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664827853;
	bh=n3HKWFmLX6+LL7FPQKaW2SG1/7XYeTgkVjp0PpuKsd0=;
	h=To:Subject:From:Date:From;
	b=fDxru8aNLBfxBxDJAkht08ywhRLcdp/mbSSBqpKgZG+bYlG/JuxVQHaHYrC+38wfp
	 O3TFU7dW/i+AM19U1ESkWkwo7F20HeZr7Tb4+3C035SVd8VUaoU8EcgsF5+d4dOBMC
	 aZNUcvOXdyh6f6UzMG5E6A7ueE3e1yXxEXrkt1RXEIAGxiIYDJHmtMa0nDm8BH5XEH
	 fJSsHl8YUZWyHw9fAJxTeZ53AR2eQ0GKT3nIYH0R5fLfKneX0diLI4B8+aKJrdQile
	 kfewrC0xztCz9RL3uEiNw8j7aKvi0k7WY3hEaVgza+DrH+5lsJ3OrXM1kFoFQLf2qC
	 SMmY4aUEtPdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51747C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482785332.32363.4787674687209638015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1737eada074bbcc3bbed5c1c0a2176ae6fa6c00a00de74f6c9df4b4f93202ed
Date: Mon, 03 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664827853
