Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D081DA31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BECBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671414687;
	bh=c5E+FA8F8yVkVDC34E1rWxb5vW27/9PUDFN3XsYVopQ=;
	h=To:Subject:From:Date:From;
	b=lXlIqqJDVukhreikGvyxRUGEnU+eDAOEeRQmSnoCoz6O6DcYP9XOOn63YKB9SSbny
	 9oxAw+qfYUkkKuVORKfoLfO3sULpTY7K2Nkxe/w/I7i1GiGSNY+CMGw6XFWloq1uCs
	 rGpF7pJ6kD1r50IcaBYeP8leQzrfHRP7DkB3UEfxjMBcvqH+QvVOe6eI9Tgi2aC4qT
	 TE88RJrijKYmvm20B9geGsXP54OCwq/fZ+PEMQFf4TrH0+PrB3eaFNXlfySGsq/tNl
	 2rN6xbWyjcOYBBXxn/pEwgEz9OJjIOHbE6Ny9d7YHvgQCBO4ke07E9ZCgEjA2XTfU8
	 c23iRdogMnodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66818C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141468741.19250.5320563179909813165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b393d43bd1593ab2a1c7858abf3f3c674ec78e1fe4c291c101a5eb7d4f9d0b78
Date: Mon, 19 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671414687
