Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A9B7F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 03:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BC4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687578788;
	bh=pNv+vxA1vlMrBa+nG+NG/r8mzFU2kyxOJBSWzKDbqYo=;
	h=To:Subject:From:Date:From;
	b=H7lVwPWl2Y8IHSJOU3Jv1dxPM1fCbifSvG7CqYO8g0Y8BduoTwvSx2Jk2tOCB4B7g
	 scpz2RMN7FGfaUqO9UKhERwTJb8c5CoYSk4zJvly/SbiG6Q6zQQjvpXwPeFPHAt6fe
	 O78QE2pOv1WZpRL9SM5ApT8p58fEu+mimFgNPP/YHH4sYsqo1rn6al979jrwKjivSJ
	 8CWS3e5lyd2ok8gey9coVBO4BiO+ABTsnYnxmXRZ3/OxIv5+9jY9LNoze4i1bZ1qOC
	 V1n65af2QICm+fGLQ+8NIzD6mZA2ylJrL4Ol35H+ke4BEpsEQ8xkRJIP2C4XxCQGEA
	 S4eNlLi+tvkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEECBEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 03:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168757878867.32593.9167245663739879603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ee96379c5457125b78eac409a6255ecd656cbb6ce0fdfccff49a11c732fe9a
Date: Sat, 24 Jun 2023 03:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687578788
