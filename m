Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05A423AD
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8224CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663834253;
	bh=TzZ5BzsuH2W+tpZt3Hp+iY2oCojQ6aaqh+q/ZJfF5Sg=;
	h=To:Subject:From:Date:From;
	b=LcRnWZgG4ASTyWe1s+6wS2H97nikTwBmyTkFNqjFy4Eyw/f/mzo1M1INVqzt5R0W+
	 Y4J8EjaUF1dgIDVJQ7K3DAwsgLDgmsjrYtl3gVVRvS+qKCENZkKxQMAGNJnfoxo9WC
	 +2BwZw8jay/xoaqwDsug4ZYSRBJIbM5u8owc3jrivY22A1VldCAthr8Tgh/jWo4XXS
	 yAwsEFOp4BAyPonAwp0XaVjrJM0J+s8p2/Zs9Kf4IXpXjlb+Zv35T3QtNJ46k84tml
	 X+jCNN5CzaClTXWsV5xHZjJTWup4dbLUYwdCqnsE4jujT4NLSxSvS80GC7SYqtXeYD
	 wfFOpp7V4EoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66121C6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383425341.30721.18339525385052431120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2662a62e08f0a268b94065eb1d51bd0c31111833e737b1d5e038a9e197200e
Date: Thu, 22 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663834253
