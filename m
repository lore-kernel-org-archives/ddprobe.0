Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFBB1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA03C433B5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664665253;
	bh=k/vaE0W5AKWVjzIcu6m2VVCUmmBoYqV9uMKrjjTobvo=;
	h=To:Subject:From:Date:From;
	b=VlRhX1k5zlpHVYxviJ4eycTMpZm1ymz6o5TUpQQVhE2oUuJPsiB3BjuwdeRpxfjkD
	 7UUYwhH3/HaY6ELjo7TgUyrbjKReyNXc6eawGLDNLjqzcLYpigr1ATxxmlairNzAH/
	 GM3d0GIwsIWQPpCQoBW6lTRr0KnZZXYg6sQ0awSSBWtfUfDS+4FR6fSEq7EwNhh8wd
	 8IQP0T1TPHIhzPlj2fxvxnvQSzifDCXSZoCJcQPTWiGFBmWChrvAahYso8mXRSHFAX
	 917WhRcMVgw45HtC7vLRjUjnu8MkEn8jhtPCj8lMVFoFPSLlsv3egimwRVOmDGnEJP
	 fmxswt5tTbtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660C0C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466525340.29550.14953641680720515735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850ae8d801936ef68ff55c7e477cf9e3f514ecf6f726b03fe99d27b169fd6228
Date: Sat, 01 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664665253
