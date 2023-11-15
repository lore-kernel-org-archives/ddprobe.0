Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E0ECA
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9qXf2zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858DAC433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700015296;
	bh=Oon60todRSs00RyomWLBG3zuMk3mdFbKczil5qcNk3o=;
	h=To:Subject:From:Date:From;
	b=u9qXf2zCR2tRzLAChWkMlWmyN1u2jbp65885ETn7ShYFcoLL6aZJ2ublsvc/Sv+V9
	 SNuLKnpBKKtrR3xj4y+mXgcbVyWz8aHHrr1A/N8KXOd9WUQltEgVCNK2x0Zjis+HKI
	 PB0FwBj4djK6clY1pW2l4sG/VQm/6p7mtBJzcc0O6Gerd3pKZnfuaVtUr2kZnL/Tew
	 bXN+2yCTP6aaTOBzN/bSvWTjrdlR86KF+FEW/sE9He9SEb93m3QbMv0aS7r+e5eQq9
	 Rms8HiuCY8AyQbeI7cLhWhdXmDZkKlVogLeAuOyVDBnOT/+RcybvYXSCO3Z8unl8tP
	 TdfTBpGZ8HYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B1CC47072
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170001529640.23185.9451751936323647146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74084cf9b0b4dd870e9b56fe74f71145a945e544d711162ff30a374ca5200190
Date: Wed, 15 Nov 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700015296
