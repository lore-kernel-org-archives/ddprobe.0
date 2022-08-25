Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D248B33E0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768B8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661440852;
	bh=+hQus8Fn/2zftOCa6qmkq4iDy2IVZPM7Mx1Fxg501Bw=;
	h=To:Subject:From:Date:From;
	b=Mg9s63gFdaGojcoi2cZLrEQxrF3YE6eE/VCeqmsWulA8fA/uLmEupYmZBsPVt9Re3
	 9HL9olgtWeE3JTWdc2bueK/OlCsQ4IZD5NLY8mhU334FO8bG5+BlJOkzPYDM92M06j
	 SkxxcKP9i5YOBQeZmTArZ+SZvA6l09uyaLmJSs/z36zR3xrU9XE7KRHYKbWw6/ooE9
	 8BMGX8/9F5SuSxLKmMjoyO2hhMf1WxHiA9QtmEVmy/Ag+jQe4xdEbA2MzuqWeeNP6h
	 7iIcIiAVid2L8q+3ZyQSUl7QPhuNgU+RFyp1D7+Qh3d25UWK+KeeVi63OJLVIUkh7b
	 F/GqXtglCilgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBCBC32774
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144085238.8350.1695291070530827504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c6ef5e58693acaa8a0a4f225edb6e3f28a9dcc9c677b4201ff0d2747d26855
Date: Thu, 25 Aug 2022 15:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661440852
