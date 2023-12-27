Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31E646B85
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZX8/36aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887BEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703704696;
	bh=dFuTadj+dRU4wX6e9mZj7S7FjTCvH4mUtVrudymm8a4=;
	h=To:Subject:From:Date:From;
	b=ZX8/36aByb6XWDTeZ+rcooJ/hAtsSJ9Lvh/WNQ2ev8zogABuxGK79PrYnbaIKxP5+
	 fEdS3jgR8cbbD1C1xaNzQduhK6NJJeypaReuGfKiNJbf9iK4ilgha241FtGRQYUeoY
	 pGHHYhCjDvhGl8cTKhHGeRiIF+l/qLDJLsyapJH8sQjXZOR1M+nxPD/q2VHFAiVx6w
	 ab2/8jb6phvBCVdOhJxHNujbTLivij7iLi8LZmtvEawMLSOa9oBvVYWIRkgtgfDVa/
	 fXYlCSeNePh7nDb75faL2qDjA0OyLWFgCBeCQnDTbNt8Xwt8/wKIb0rqw7uCVptFER
	 zGN5NHcp+JgWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2A2C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170370469644.21654.1546045227225271824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5f232efbe21d4b89c51c2b1649f03f5cba834787aaf0b908228d814d16a271
Date: Wed, 27 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703704696
