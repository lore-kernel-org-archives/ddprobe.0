Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E239D7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CB1C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662931853;
	bh=KuHcAEVXcBzhbyuJGEGIDDC8vO/t5s5paayS31BX8yI=;
	h=To:Subject:From:Date:From;
	b=S+r3pluIkJcgrNC6oPT2kLtdP6PAAj/RP28O7fnXmdvgr1giZxYrTiFmKj1L2KOvc
	 ENqm62EMwS+pfslfAxsz1ravd60H9/Ogh41Oj7HvJdEIxY87GfUAM5jgLnAbph409W
	 ISE5NDeo8uxMMZEKZHnW47cMjZIqJ/W9rasvoMwGx+T2zwSJ6dIfa6gNEgugSN1Bll
	 9IQ7FPlxaeOux2q1xN2pVv6PoD8TDwN9mytM09BCziyu7EgdXJjmYxfmFz2QtXJ6hC
	 Ne+FiFMl3rzzZR569gssWhW1NZqgLBz+ySWmgUEeLTtREfR+iZ3ChtdTKJni+y1TnX
	 7OAeGo2lTm0uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67232ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293185339.21524.1360323565288162635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2910b53e6f63c95f2eda464bd7eee49c6f7a65301520f05ef7e4a8532e8bfb
Date: Sun, 11 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662931853
