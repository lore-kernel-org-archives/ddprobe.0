Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770EC79C3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 009CEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686378546;
	bh=/CB32WuVlhgl/TVhJt0F8Gda/8wfoflBr2qj0Azc2Rk=;
	h=To:Subject:From:Date:From;
	b=JZTotYBscdvqXFR61TN2MdhrEi9VjpYnJciwO4VkgeDdTK0rauAbat3UlhS2tszju
	 ZN4K3WW1dmIKna9K2Kh+i64leiIS4THvK71je28ZvaGuSAS51obPdQ8qAu13pFkdzG
	 lJfj84tk4fTZa+oXmpr64gH7WKQUjL/gAnac/I3zSMD+IfIJVQYtM2/5RNNbf+r2mz
	 7KTfDj7Bvzfwl5adAabMh1CNmLDYlrMgDTL33A6q0QYc8wHbu2aNjWF5OsuZg+ykXS
	 Cj8xy4cLRBdjo5zR3V9k02WDX/2JiglbD2ljGtzB4NJwUeHpDDWPt14sMUE0KZc7rF
	 FmGFZBYldvG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E31C7EE45
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637854581.22322.11238496408445519880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eeab93cb66035c3355d16a549f3b621b52acd4079c9a19021e89be2876a09cc
Date: Sat, 10 Jun 2023 06:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686378545
