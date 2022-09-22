Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9A823A0
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DBEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663825853;
	bh=LqjiTQLVHA1vxiFQemk6n9q1yDFlEV+wiOQu50qRY/c=;
	h=To:Subject:From:Date:From;
	b=gvCUFGgQXKVCH3jGaM3SCaZqCzHgEhZ2elRGH1moa5lPQuTekV8GgvCkxCMjYkGri
	 yzh+JNTf89QQ43kw1PZDslaSqiet6hNYD4/A2fqIEe94TAzJNeYPMkEAXMCJONvJgj
	 eGBIZO9iDAQddz6p+SOeNK16dqsw+WZRyCGAd6nK9jqFjVsCmCqJwpLvMOGWxGidbq
	 YYRKKzHdO37kPH0mlgbuBmAsFO/aE/mZNiDP+WTgUaj8RBFznOSORidZf/yXxA0Xpp
	 qQBRMYNDDJCKlJrdlLRmWnsKw4dlgYEfJ7HDKQNP7jykC9B3kA0fVclWOc3Ps76Icr
	 SPRaeYA5qLcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54940C6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382585334.28579.12840594397849257556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322039e7aec74d3652642640425aee587bc49016d8a295338e0735e6b2af5893
Date: Thu, 22 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663825853
