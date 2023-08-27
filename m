Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5782F3A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCF0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693168448;
	bh=aMTL2e+hRNAqec2hmJ67xllfezcGtjthM0Kf5oYGR1E=;
	h=To:Subject:From:Date:From;
	b=O/UWhEkeoq5rpHPudVh8piswEgsrO7eQMD7ynMcTVv5dW4CM5dYm5BMlQjLikOHG6
	 19W5ksrmabn0Bkrv++y1/YSXjAP4/x/jKZhpBYcO6YtunfSZNjEyw/5vlLiSxwiFgD
	 pyaxJgVx9zUUn+3qn+HArUAjYYcr8Be9YYzz1xTZuxcWCeEXTkwbB7ePbgXd3fPgAX
	 cQ4CHYKkYwx32xHKc1EJW/TRcaZzw0877WxNl+iYipQAFPykK+I4Hu2Pb2D9rSm/KZ
	 +Zp+A5mP8K31HYmQlMdQqGMo4pGgqun4GHyHn6f641xWq/ocMwHPzKIvQeVaCLWx1w
	 M+KnPPAIWzM0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE701C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316844867.30274.9620617090528583729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97e2f30f5c406e6cebb6cd739a3c9c22f30864e4a3005d564ec416d0ead1a00
Date: Sun, 27 Aug 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693168448
