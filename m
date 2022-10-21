Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F033C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEF2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666368053;
	bh=bDWTxpi6fjCSFxOSSj80OpP0SdCZ1iwVJnDthnPUHso=;
	h=To:Subject:From:Date:From;
	b=HYM1We+qbOUrvX8eLT4Wgi1lEuRcuVFmB+UvuWOAan8UlEDg7AxoXqA8wORLQJO/A
	 8WvRx+Cv4WfbCfxBXLVTYWc82tAY6E8aLa/WhQ/xMeMYedQggFyfXuDhZZKwqZPMa5
	 wZzve0gx0Mbltf5+/mBeJFTNl4bEQT78Hz6L96ADDcMkuI4Tym9sO9QaDNWWMyHXQB
	 m5nE5ICGhvRumA672yQQ/Aj7cPGjlA1MFuKOJpxBMAFzZugRG2Mc9QsizOzaBaMPl7
	 LeVkIkM0MnuZiVvLhHvIX3mVQjKjJfM1uPIRpHoCSVRqi/OdKcU2KbvJDvIJ5yvOAe
	 uCwkf0oi4DFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E4CFA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636805333.7762.5792226541298755759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e165d3d04d97ee6bccba59b32bcfb983f99619fb98a5741db0e2d136cd4990ba
Date: Fri, 21 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666368053
