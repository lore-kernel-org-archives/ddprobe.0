Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA21361
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20AEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681966565;
	bh=OzxsyvcWG6qMXHh6S4Jz1/mFUbk4ueYQHC/WoFrweas=;
	h=To:Subject:From:Date:From;
	b=SyuDadrA5nIhbRHgjh3IMLVVZ8g9Zh4n/6yHw61r8g/6Kop6Gz3Qkw9wa4LkbKCI7
	 z054PWF56WXpgfUkppP4zl9ZWHlRvW6Xv23+DM1iTk2tgjJV5FWFE15CISimOntRmX
	 oePDH7NaxltPPn1HtX6RlgORFh6+SWEmXZ8nWvZJXUMuzEf67GY/ZM+qPwqbZhvVc6
	 RNIWJRg9Ef6NjHYcRwudWOs4c4KGZIiQdzPVilCtB/QLPJxIvo7ri0iM2BFUN/T9Kr
	 7tECQVrK9QuadRUVTu85nypgM/hPekVHpD4YKQ1ep7JlgQ68sgpCsljlzm9+itYQyo
	 5L9T99K8bhBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CB3C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168196656575.17027.16770546580651737687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d17861a9b2a6887d5ec28fcd6e7b82a918399c16e66139a66577b4174debfb
Date: Thu, 20 Apr 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681966565
