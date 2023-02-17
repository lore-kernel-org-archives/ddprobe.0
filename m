Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41469388
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FABC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676678105;
	bh=65mAU103mT0shCQh4YKaV7CxoWP0JegIa4Mm1adH5CM=;
	h=To:Subject:From:Date:From;
	b=p0jCfTrdVYwqJ4DdaVdmVXOMjgInuLWmpkfmuksiZmlOX0Lyd2m76i5vrQniMDsj3
	 uZyLEYJio1qehxIWQvXGVg7r7hgKN+fSFTGEI4zpuG9WTrbvk0OK9yYG8IHTkSYnrq
	 IHU751cGHzW7ygymSGHZyhRYKNKkUtbvcJZh6XTfBDavtx5iHa98NQubw6tfBReu5Z
	 7ccb0VhhE3pdKcLKwlwHr7BeLPL7BSShF5j2Wa+SLeUFEWWYBu0ud8RN7f6Fr6FnZ8
	 WiYzwBrtffLg80Ko+cCoWtBSazdx8OhtqOt3CxsAOBaYJsDx4NT2LTtf/F2FR+72Gy
	 R34xb0wNCuDGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC12C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667810573.23059.18354529159980569946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244359691d25e03d2747f41fb5b18be09951d47f27d953bf0b8e293046f2145c
Date: Fri, 17 Feb 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676678105
