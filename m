Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B217362
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 00:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1755C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 00:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690676528;
	bh=6CfgRwDDux+AinhlYrqpkj3Zc3CHXHTkRBx28AlrLTk=;
	h=To:Subject:From:Date:From;
	b=p2f7N2p3d5TacQ87Q/QntQQ+9b6vJykBra8neyN2BX5lmOnYSkAwrJASGhOlJJHGr
	 VMCEHTtw9beHMhjrtWM35xcMjcwzheHipovfrI4nr8AqktdCTKRfVUft4clcJbv+Fc
	 Sfsa9mzZDm9FhCjVc4dzeVyeP1fHT5lbLnYNgb0sN/VN+uufy7jQrqq8AtxYODCYW7
	 2WdlMxq8+USkp5A/vrO3KLFXHr9vLctlFf5GNG6ohSHnvqROKO1NqED1riqfzp9DFy
	 qUVGiGNIePSPe165MPI5JjOUhIvTjrZMts1j/tDoDn2t5ODPM2TjKoeQ0+C5oS4CF8
	 epKFZUvr3B1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF40FC0015E
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 00:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169067652868.29788.10553146278272515344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954b37024b67839e1aa4c605863680ed2d29cc4fa8064da9cc212a5557d6a537
Date: Sun, 30 Jul 2023 00:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690676528
