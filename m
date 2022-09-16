Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10A117F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F93C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663293053;
	bh=tBvUIc+OWbppHccM2mjz+xiIwEt3jRzYiLpssrEauxY=;
	h=To:Subject:From:Date:From;
	b=V0pH9tUKh0XwlGK1kz8mY6omGZxLyNQx0lnzxWePIpp8aGOzxRs6FTCr9rDRzWp1T
	 Glv23ztu1lzhSYsdfvZWnMQtzbbMilNvRzDk8uAYwSACDsHnd9LVPt6tC97kywGppX
	 gQUJn+qnQ18XSoaBqCnJEbVzY7tj//H+vgLk7Ny3Qy/ANQoQv6NVM6ba2bZNfDKI/f
	 lGub4GjnT1EyfKpXQMFJ2aXNxGFUz+OxweEfrd5ozHCN6rM6KufEylZIaZAHUbiI38
	 ZDckAAhe5tMQjpFibgNEOuJOq1ppclmr7krxNVBlNMMESm80GSJPusyXFukT3nCSdF
	 aBzxtvsB+rhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C090ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329305335.25486.994022297769610829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080c65c28f3b7e55bad04d98388b9a0dedaab0920403493387b1cf0f3e7967e2
Date: Fri, 16 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663293053
