Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BBA1C32
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB444C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687104608;
	bh=f672DXiOdE3hCuekVqsttXSr1OqjR74CDVyuA/AHY0M=;
	h=To:Subject:From:Date:From;
	b=fnTdAhiUh+wB+V40YK/A62Z4ER+LACge3t3RY3chlU4Uz5/Qjk/gPKQv6BYVawObM
	 WyZpAZ8oUPNq0EfXxmbmxjCYAj8e+8/Vo3kW3CawJw7lZuP1p5F0iSSAZsqWuPUul0
	 L84BgW0l9rkYWHS2DHVZb0EGpE/Ol1vuy8Hp7JFxVStqa5eOYkX5rIvJNRsc5qYmde
	 bXFgqSB5Msmn0IUBA/jG6u94QHVVymeY004KyMNum/Av3jn+GeICUza/DlNFy7Xf8E
	 quI5dyB6zSMOEpCh2iMj98O1KeavpXjNm3/m2dle5OMS1Mb4CcO1eLp85ZzL1UEOdP
	 aLPY9ZuC/xxmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33DCEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710460866.32208.12443544887825845052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e04cc09ac7b3d9f9fe4c02226011b07b8f1afe60f1f0fadcd976e6080661f3
Date: Sun, 18 Jun 2023 16:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687104608
