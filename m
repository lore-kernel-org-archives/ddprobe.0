Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42B94A2B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 630B5C433B5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661966453;
	bh=Mfa9ZPM+aJ/ny3kZU8UtLzp1soIJ0qklCPwWYuL77Zw=;
	h=To:Subject:From:Date:From;
	b=ekCPxpbjGXPD9ICW8rHG3Yh6qZJqdg14rqnn2VEQDZXgIlJ2WUmbFMedOU2427El/
	 IS/OfRPuyz2r+5ACGHKweBj/AOrwPHNAXPaRTEbe3XY0y1QFwVSF/3jApRV2Fl/chz
	 aBwQwS7TbGFKCtyXwn/MLS2YY+7pAY4Sh/p6cn6uDRcCJOJ3sKyyvYC4zKHPMda+wS
	 Pe6y+YrzcX+86sihIoSD2WF57KD050B89gsbameVPmhyqwAg2910k1aRSayHdp9Go0
	 WjK6HzjPh0Y60h9OcYZ4/eN6EVKJGlhN1Ow68yqqkxEVf8VZlKQ0/wfRFlgtI2DxfB
	 dD9GU54SbI7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1EDECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196645331.31143.8877207144115141416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ae1c1774aefde89846f5741d4b0a624273b1f00313478a439325ceafa0d10f
Date: Wed, 31 Aug 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661966453
