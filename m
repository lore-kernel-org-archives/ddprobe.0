Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4663E7F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB563C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688610428;
	bh=ACPlh83CG9wQQ7cnnqIaOmLVaNYx9ARsP4s7kdJuHng=;
	h=To:Subject:From:Date:From;
	b=OkHUPxwqS6qAdQNcAxBywg4zMDJj0ZJRBnp8M5tQwgzEIbEGw6oe60loSfrh3xJGI
	 g0BvnkGTCUV+rnHPiRwMNnR73E4sdWf8s/q6nlMC7B+D/npRgqhHYQv2SMkTr2qr96
	 bD7M7SN5aJFCpm7YO4qh4A9Q9mpWJpS0OA9GBN0phrBG7Kg4vAHfXzkSQT5Fh5/8O3
	 FBOIObLzZ/QyXiF7HCdZJWnpiCS/MZT2m3vu+FtqTV9G3Tliww8iZSLaTjYg9GhmK5
	 N1ERfXZM1sGj21TAuzSOCZFsdHN2LAflnA/dT5oOzfNnGL8Mc+cW/zUOWCzxO6tWZw
	 iMbVeVlzgU+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B7EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861042871.7138.2786462497459519409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9497fe9ec91fcb2e52cc570ca296e37b9cd0cd09fa2bc04dabcb98552833db7b
Date: Thu, 06 Jul 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688610428
