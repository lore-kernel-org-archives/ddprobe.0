Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C71563A0
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2518C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689989528;
	bh=m4upG6cOecjlp/pLQgdzXuQS5Roh6uv43e3WkfUqMfU=;
	h=To:Subject:From:Date:From;
	b=Q3DfgQ6at9JyM2xPWDNFKG/mQUaK16M51wV0+ou1u6cCNh9Te/Z7AtqAf2LwqL63e
	 mqYICXsP9qbLV9OapB4V6sJx9VmwaPRu6pufuC+QPBbmE2jZ1WzrP+mPy74lLMw0ZB
	 nTPRsJDCXT8ifURyJKJuVOERg3O/J0h+ZGkf77SYC+JR3OV8ZzvY/ke1WDzbPe5dQT
	 7ts483reL1tlkn/Mvfo5np9aGudg8u8Qv2ZMUeVisKGhQAcEORyBb1pY3YexjZwYhO
	 fmaGDyS60il/wdYN03Hu/9eFz8BwQilXxndq5K0vMpGEo0dZHfTuSOFQ8onBN2LPQV
	 HHAYDo5eas0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD938EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998952868.29008.14177841445333004182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866cefea61b0f032dc89e62831b182ead593fd84e2b068d0fcdf82af233a9be0
Date: Sat, 22 Jul 2023 01:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689989528
