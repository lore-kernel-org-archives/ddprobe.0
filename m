Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEC75677
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 20:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF4DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677443166;
	bh=NSkPZtDJMlyke05Ytb0/tZrxK2szT0fNQ11uGUREJM4=;
	h=To:Subject:From:Date:From;
	b=rFvTShSZo4T5K+Or7UlZAbvw+x4kQJ+dh+gx6pqhwlu3xJ/pqvSjValQ4d/w4RX3R
	 xO1gd1n3Km6kRgGYj0anCh/3zTK28VU4ew1nYNgDxO/y59AE79uahEP4lB0mYnZd5z
	 lMYRAnZ3j4x+feq4wBT+ZRrubmm/WXQ9eFnZFfUCHd/MwAtqBKMXW7DE7fRVvkt5Ch
	 xWgpsWmbjSQFeWtL3xM3Hc5ZOQGEfNmqSC7mR+S0r8/Cv5ckT8c9hNfYa28jyOczrz
	 otAW3VkIAOfAPUCmM3KCNblWqAI2HSIMeBNry81r4WfOgmxLYrifsLd14TVjWBILgp
	 9UHZNJo/v84ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D270DC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 20:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167744316579.16078.5798890240581929359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c328685847994e050e8e37efe8a705c2970e705ddcaf99a5ed8e53f2ec402f
Date: Sun, 26 Feb 2023 20:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677443165
