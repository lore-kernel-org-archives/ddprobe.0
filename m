Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBAA2F3E
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7359EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663459853;
	bh=iw9WqEepzk3OoITXuV97ZrhUeH0zzfX+M1Yn4DQP7JA=;
	h=To:Subject:From:Date:From;
	b=ZsgQiXjTJQSZiXByGjz0utFJBZnKvBVnsMcgOUILHv+x/a12SnTpGe/PxwuXkgUNB
	 a3iw9Z78fOC708J1BzWYxTQe1RNnbvQKm8xAYosiz1KhfOfmMQe3tov+wTTcNVwLnX
	 0BV97mOBJCrTznxv+BZjBtuLALHHuhr443gvdc+KFIh3Wt9a7M1Rmummc7lm35wgoh
	 i0ZMHf7bVc0pDJnIZTSyRnhxgKd11xRTo2rLNPaiomWxa4avIcW5hZN7qfIBQTDfV7
	 TZKYtabeQL7hUNO/bln+vU+/fXPNs0mbgJ6YLclC3kPM33uV1h1O7VFWRbo1Dj2S3t
	 Kq541mwMowP1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589C1C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345985334.9471.4762414567301941875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e5e7b7eff1d59e8d8818cadcb6485cd84dd4e1597871b32c89713a831e6915
Date: Sun, 18 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663459853
