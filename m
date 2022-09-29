Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5E053A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF53C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664472053;
	bh=j3aRcRTXbVjNLXjuYfq8pEXGXldXUKQAI75GH8L/kSg=;
	h=To:Subject:From:Date:From;
	b=f5N7c3Zw826+cPY5wVbwTBfIv76PI2j6Kp7hCDsjl4Mg5aaCNRxytS6B5t8FUnyRR
	 9F5b+Err0GGYfRxn7lDG36Jpsz+sbXoJAMkTyb0S6y13bOo5GqIAcinso+crrLjq8K
	 NTrPjS0JF2YW2QcMRQchvS0GgjI1y/nvXICo1Wgf0BevWobWpJ9AHt6tY4pe/O5lpP
	 gNc7TdPjwGNEvo2APPOrMpqPb/gHwD75uxyC+qRBTOWxjOoLJ0HRrdxl6irl/cp3RN
	 tWVwiBLaSYFTA91iH347A5ojOemHskXlsPvD5jqbDLls+kER/3f1c9C87KdbGur/wY
	 QHJAUMXQfp5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A61C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166447205335.3024.12404095191577421343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f8e47d1abd5fcf6b3279d4ea3cffce3a76eb62d7adda9dacb0c3d64a0b877e
Date: Thu, 29 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664472053
