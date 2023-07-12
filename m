Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF47190
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 00:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D83C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689121628;
	bh=gA5TMQHaHH86fHyOs7YiMQolKDthYTLCFgV0IVpObog=;
	h=To:Subject:From:Date:From;
	b=S2JzE7r7vaDK5Sh0PM0d0jTT6Ki5XYGgR2e1SJF0CYzS5SCmcY06AgoW02I9IY1La
	 brWMFaumMHqVGkE9NGIdjtTw3H6TLxrXM7RCEGsF/q/dxgDGwD5DzKF6ph5Dq0F9Sh
	 ylw4pITlH0+KjCIVdOFzaaRi1tl7xTiNERdbNzfgHglomrdCVE+7Qnk94B0HByQASQ
	 I3JXawPnao4YjdOldJ58BT1IWIXhTyR743x4Jzg6tm4Y+pBOFaHtpN720c9YwLoN8g
	 DKH9hX0O9HWhtHllPaeAkWVB0+ETgvuVvDY7r2j+6JJx7pU64GJy4U7HZnRzpHjVgb
	 Ue7gp5zp1/VLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F15EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168912162868.2262.6648884430700371898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415fefa28a2b6a4414c7fb57ca1f5ea8a9939a32d464796f2f6b1d2da5b37f0d
Date: Wed, 12 Jul 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689121628
