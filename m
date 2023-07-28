Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173CE14013
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8368C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690560128;
	bh=a8oBnHl+3KRqm8/xFkJqez8hL/aOXkUxQBE5kak9cZk=;
	h=To:Subject:From:Date:From;
	b=PHPrEbJHZF1NGTYhzClKZ0R7XBS+Yqw35atweqXR+ub1h+egypEAkSNSrAm+2hExt
	 gLuLqPeJsosoRxtwxvbrlSHSVQKmPNQeYAuXv8lU4/7e6X30KM/HFrHnLaRy9P/hVF
	 ak63jikxKZ1jFCmPZjwmaM3ugS9meZGIvgYj6WYIvKme/wy+8/DvgKOUctkAwaflZG
	 KG4arBjJMs3LDgiSnYA4aDS2rW9ypHqQvmlJjCBy+WeSE9nO7o/UN/NGXHQA2RhSSA
	 30LdqByl+mj2TeHXbv+Ois8IilAr4MBWHcx97ZNGm3pI+qWNm9Nc1q0EiIvoKR119d
	 wXZJVMyNFcQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5072C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056012873.19476.11278341419098737527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5df117f3b999cd9e9c85118de62462746214e119400ba4a49d7372ab1d2fa0
Date: Fri, 28 Jul 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690560128
