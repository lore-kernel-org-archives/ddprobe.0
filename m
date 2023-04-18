Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBE1EBE
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0491EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681778946;
	bh=vMgI58wV9TbfmXOKYy1j+PQ0qk+x+z3GM0uwJaki6U4=;
	h=To:Subject:From:Date:From;
	b=fypSpjJbAC9TwOKmCR6Z0I2Rs9gbopJ3dtZ2gGYDyIir2/7jPdxmb13GxDcH5wMeT
	 LU+Oc4fcKFXbTkRmVxqkTzG68E8Cj5iPRX7iDY3yzBKRrQcz0aDYZ27CLn67luz+X6
	 7oQNom3+qzS9lyyozVyEKnKE9vly/dpGx1kCUoqiRQx9xP2je7AufVSxgeAhQ5PnAi
	 qkIQ6D65iZylD+CVMIqMuFRz34vl6v8Cg7L8j1YwTwy7mu3NThmTMeSt81YCWnbLUZ
	 Ty9IqvpyUXZAR3iPJN53IMs5wKRedERKAZqoWcxS6MkCC7vdlDgTpDvOTkM7uIgsyk
	 yzUp+WhMBtpHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A56C77B72
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177894583.25594.6531324262214439739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac15fb00e3ee6598750306d99529289500b56e30532664cef10abf83597cdf31
Date: Tue, 18 Apr 2023 00:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681778945
