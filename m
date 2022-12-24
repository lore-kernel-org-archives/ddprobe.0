Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57C618F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7DFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671843087;
	bh=z9pPcUlqG+SFQhC07nOudbMy3Kmd357ddX2Y0Bt8LkM=;
	h=To:Subject:From:Date:From;
	b=joWV0Wj0T45t6kka/v7o3bOFlaqyVvKdfsTrgpnTnNXG7qBD/pSUxNs0EKfxjCq0N
	 ia26E6o25w4+XYI1dgM7GdwTwaAih0ET/WLVWhSADNYVo+2CM4ACkKyuE0+rqoRyax
	 Xs2i1bz7cRyGSqOUtdW/VPizNsUH8ZqIKj1ivL6tlCzF+WSBifipl+HN/DywBkjK1e
	 6KxxQl0ttdRNWVo1fB/el+iAzE1OKaqYuARbMN4N10dd+7jhmwpHGH9kpY/rYn8kkO
	 20oOog/ZEIThVeQwKanljgYNt8OkLY5PHQ+3zV6UAI66nRUYlff5CbZaF4Y1eWdpcJ
	 OP4r2TKkccEkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B9CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184308738.32267.15610357611714948767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab1f12762bbf23035c245abea17859380e63edf499c54cb38b071e9371480b8
Date: Sat, 24 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671843087
