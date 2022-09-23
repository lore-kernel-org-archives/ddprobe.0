Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF3A15B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E6DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663893653;
	bh=MA6uQ3Qu7bf3QcomxKbQgx2uJAPymjBdYk+ANfIRHtg=;
	h=To:Subject:From:Date:From;
	b=HO1V3mHH3nLg727gwYaJ1kKimO+XwWVloAz+cUh+03tKzM/hLip67rnIDeoowhk/9
	 tXbQ1KQmfXxm+YSCmrz3BvUSdIv8fUkLVmYiFf+KU16lsUw1RkZag3h4IZgLXMTu9W
	 jqjeAamplJ74Qj/SkKjNs1jCnf0xPOHdjAXEc/IIngOvZNcrXm1M31RmLTtveIFpsn
	 hLEIU3iAt2AXJ0XaEVC9bCuDamGZTO5BbObQxZgSlfnXZGk+LBhOnSfm5TizoGpzSF
	 JwFcJfbhAbLnXws2wAwxuFnhlcBil/BclLeQq91e4hoO5GMqT5MH3Z6Uw+GyIp+pWk
	 yB8gx7UgXqqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5F1C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389365331.4726.8848532790283426802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa849bab8c265f870e9ace017bf5a430d47e5371ca8fa44dbeb7b65281bffcca
Date: Fri, 23 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663893653
