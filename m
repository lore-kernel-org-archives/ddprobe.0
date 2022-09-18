Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A7A7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767D4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663465253;
	bh=6tYOhp8wM6syTP4bi1NWyTnNxWc0gPo7H/D95FQvd20=;
	h=To:Subject:From:Date:From;
	b=Q2DJkaWNNKClvjZzGjGR0/c0yINApcapojclkTLwCupC3Hj009XR5e4wLMpW+jiWk
	 anqzm7RPbTeSb+8B8irQ63h6Wa+SqIjg4nEkmwsW8+KIekwJHuasu8He8jPtDRiIoV
	 UoN4/0aI5JymHWFZfWoBe62b+IfzjZU8eSx9+vKtVblbsJ+HxgsjzkwFCLhSAA+H6/
	 WFYR+u9+ZdgHpEpvlZsqARoZI8PNhm6iF4ovLfWtBk5Ip4dIkFLOrdYgB1a2RKGUtn
	 hUOkxNSZglUW+FVrunAwHVe8nbaBZXHJ37in8Iv5WVDLmSwfrpgbmhXFYKHqqAAkua
	 4KR7pTfyBtMQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7BBECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346525334.24235.14674167848062179730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e1a345f634a8119a74dce7f3e4009c72999d2ffc03985451a52692d2dc68cc
Date: Sun, 18 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663465253
