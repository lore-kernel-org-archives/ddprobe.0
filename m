Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D11AD30
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7EDC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680129545;
	bh=GJPjK/5O6KhcfsOLtfkH5QeRBA26K43lKJcSaZE15/E=;
	h=To:Subject:From:Date:From;
	b=cp5R45fKmKozuJmkgpDk34jrHPdBg/3MB/i9zWIdgkM9omDpPQ49eNw4lmJTuUhay
	 n4g6agHzp+oWU4B1noofNJx+4h3sDRusNUlHhax0rH84KWL7ZiFFPaF34qwaZKC9Y5
	 zS9N0y9QkMulXmJ0JwFu2XfmiHZxCIT97Fr1VvRXzc2K543O8wCPab+7nMSTavfyzx
	 mVg/sAqpgKM2eSM6QNsKWI58OyL+LZPWUTWJmNUC62RERhcPBLeFUa9H7DEi9Z5iCY
	 vNKNbtcXix+P5RSrCg6Elb4j8AhcuFBxlgK2DxK+uvIMzoAAVZDMBiphpbTVN8TLWe
	 F4Ig+Pliyc5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA75C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168012954576.14088.9910700138668644673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df370209a826a87629f13d0dd1258beaaffab272b3fd0b6a71441fdb99e9e67
Date: Wed, 29 Mar 2023 22:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680129545
