Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604351CA1F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F9FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692720248;
	bh=73cZUQEafJgsEFHsA7Ky/GoOh5WxdhktBaB9Q5z7PIs=;
	h=To:Subject:From:Date:From;
	b=gviD+yQPSsBAFW5pXBeS6yQWI3MngvfFdDsigSxF/2akFN14bYsGWKSO6aZn1sefM
	 7ngE8Q3HaNDd+lEPD6LHrg6eBm2KEWLqcMzHIJHBTXBYQQs2ioHSMkdCnXXfsEOrnV
	 yMx2j1g0mhnYBbD+O+zCkFVpUP9rQDzkg2cRDpYknbKnsnrSV67uVxbh3uD6YFYfWM
	 NSLbs2mCHF5hbodBDlquAlWDVQqf4BRGweRJUXsAATJZuMQro3+8SWVvua/iWpEyi+
	 BS/Sf4nfZ7BNr+59zWO0LbCZ7+XImpmdaCWuwzMpADG/ZpeFNwhCW85NoXrljzqZ9L
	 x5YemuFPLs8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3EEE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169272024868.5639.7841932727552676899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a54ff7b42c15de122ef4fa178defaadde77caa7ac2d0412ebdc608379f82e7
Date: Tue, 22 Aug 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692720248
