Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE94246A8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CBCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663538453;
	bh=1JFZKMWAoG1hdcwwZmTRricl7fsJqJ0u0xMJ3Mjb+jQ=;
	h=To:Subject:From:Date:From;
	b=SyPhaKUc85Dg9FgrgkkLTRD58LCUcmY06CdjgSp0akcazs1+mcDbXCQAbfb2Wc+r0
	 cufy2TEgpGE5E56ajt2JI7/BQS04Iw8bx2BmX9CqUwQPas0ndjqATZbYKXwq0NvLrh
	 uXXcYl4qH75vWH6jCmBtiFyUr06F1Ox4mkQHfb9oAucP+Er1iDHSH4+4KiHztYGo7B
	 WGOiYkAPGpv5HQLYvjJquzq/3Gg90Yy37sHqun4t/Aw08Rp+UXEdKENZody398ZZy4
	 K4yk+5ZlUF5ZDoAR1GNPd4LDGNnhKsXqY82/yLp9UDtYowkmaogGfrqR2qwF8spw0+
	 IHBdjbIudKjaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE91ECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353845334.2218.7399624945033894664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab514c6f0bdb8595c38ca5f27e2b7bf9fcb24cec7e7513edc9862d8396cb101
Date: Sun, 18 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663538453
