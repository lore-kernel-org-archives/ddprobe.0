Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7D93D9C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700F0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666453853;
	bh=MQEA8Zfdc7OOIROUmR0W5mJaoPiLIzKA16zJA/iPCSw=;
	h=To:Subject:From:Date:From;
	b=hpCzrQboJ31zwp4ONWNPBkmEd8KEqH9jcQFbWW2iGxThx4fD/S1no91pdBz8hjfbX
	 aVZdc8R1Y9OTtkeR+B7cxZe/MKNl2TcZUes/zfTCdn+zUusmllzFdG6unienpaUrHy
	 iCXwEAbFYKhiYi+Jf2CGTu6u5J/IPEqMYPHJfS9dFAiOe3pOIZTwXzFP6e8pFqpzSt
	 4wQX4auQi/jrlTsNjg6i4SOxysm9dViZ+NkAaQERDoQIzXtV5wyawoP/NVLiZLfoKK
	 3yGhHh1eVCjrSCkAgM0bUwhnPaTqDu8IyfpZnxZ7shkQSIocryH3kRQfqlDCPT8Ium
	 6jlECzmqHTXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A56C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645385332.19643.17292826770928291286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94eb4044137379dad932ee5ff1675e9db7c8d3f8f842d756e23fc61e643991e2
Date: Sat, 22 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666453853
