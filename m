Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51D25381
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1648CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688755629;
	bh=1DPki8f+r0Zqv1/Tyb1o1aEIWE4kcCKHmgpYJ9y/Ktg=;
	h=To:Subject:From:Date:From;
	b=AWspdImIwBubTP7jFHKgkUmfDIWvwwWy/EGMxNOSmWzo5PA+4Zka58LXM6d8L9975
	 Jvh4V6vAcFsexY7bytnFrQfW7DRcj68xt8Q/QD9sg/Vv8PZtAOoIywjuk/+fqaDwlp
	 gMjKTknn4z1F54u+a5f1fQBFRFzl09nyPjZ0b0vpry86gHwLpQCVLgWgABH5HpZoqe
	 2Amzc58t4lX1zdjH5eLAry2ppycxBSo9qWa1I1lY9ZQY4aRaoNaogMIQ4eNFN+hmrv
	 awZlF+Nd0v8r/5qMwAnZdynXCGO4ql/REmr71QKvvmc/IAun1s0LdEGG8xrw1IPBuT
	 ff4n+yqiV7vag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0E88EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875562890.26800.2139481497364351851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d7fb0ab9bf6110ba957fd6265e16bd809402c5f8648b8c433f44d29a0d6542
Date: Fri, 07 Jul 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688755628
