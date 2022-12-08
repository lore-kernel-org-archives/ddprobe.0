Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8725372
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729CCC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670461254;
	bh=42ifrXcnE2UhVbjh3ojrvtEq5Te0Ws/+EdjOvnWdYG4=;
	h=To:Subject:From:Date:From;
	b=nJAFskA//+0bN4Gr9uBGwcUiDGK9criLEn7kOl61+UFD6FAwwav5snA54VBWaeTwe
	 Td/Zljyj9D+aaTxHjpJk5BXmILcEqGDUeht1QJm8JHt8f1zn/rH5KMxRcafQDlSWWy
	 I6kQjTzVKza5dri1CX4CCD0mNRsYVVNhZCS+f6A369RS7PL4N4pay7hfsXxKHBonLV
	 10xrXpQScJryM3P3vaS7UzcdV/5Kx8qp3Pgh1INgSZU2xnWQZk5Bz7xYkzadFd8qLo
	 BXw14jeblxC9t2ad68L92oonirGviY73KVmVH3nW2mtcSqULKWTe8W3xCQSvIE0XHj
	 GWxjECdmU5uGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54453C4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046125433.9671.4040573894849166995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f73e1030a9aa6187bbd3c7bc0e2e81fcf0d9fbf8037d1c2354f07786dab9c33
Date: Thu, 08 Dec 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670461254
