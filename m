Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13771841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760D7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664510453;
	bh=p49fYvjHw/3+h6TRJP/q33jKcm1S/M8WFhlmr7bjx4I=;
	h=To:Subject:From:Date:From;
	b=dOB0gazF1GLj8FKPvw9aWBv6Y4zgCa9hQ/skwjs2sXJDdL/wgW0eX+Ak92SaSy2ba
	 /dlQo1ooY4FX5sQ369xbOMpSPFU8RQD0HUiIiFZvFz1Dc+njvXeEfyOmtgVxsJKJKq
	 pOtgkOncZacT3HDYc6axcMLPU7zw763x2jjEPhjAQqFiH2e3XG8BoinGZ0ZVhcmB6C
	 sY7PfCppBrv4nXf19m99mmp4fpgd8aUvoJvQYqOy02UVSajFZZVBG0iPVQnzTHkk/m
	 kPwj0PEyPl116kCkEOsphBVI0Shj+GOFvylhk+0uEvIo+AgT+l1UnIMyHjfk7K+/LT
	 uhbDAmShCMfLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB5AC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451045334.7870.1835864310915979307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46f2b19ef1f312fc661ab8013cec288db971f85e4e481779f6d74bafb174a1a
Date: Fri, 30 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664510453
