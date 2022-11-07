Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6AD12294
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA8FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667845254;
	bh=o7M8BkmmIz7G5H8UHetr1HJIuYTWKsxj4e976pMs9Nw=;
	h=To:Subject:From:Date:From;
	b=qgiAWjO0kjRJSxCoPlYlEIsjHrX1bhICQkwFGdLUnovsujIpYLhGnQhYHTAd6MPuN
	 qIixIlZYnu3PUwkWzOWkPeEHcSlZdMx1X+1Ipr9HO/536yFumZNHCSXH1/QeZU30D0
	 sykEUw+sXi3p7phCZHxsLGm6h1RWO09H6+kDWLf6JbFSXr08JgHbTR0nWzujcFHmAv
	 qR0bXZvqGXirqHs7AQyhlSFGqtABmhTzzeP26YQsfwufKMPmU83sp+h68EVd6zW4kN
	 UGhpMxsigGGh0uiYr1LkPmq9wfMJkc10mIx6mS0Osp4lDmDHPnMBvycrSjmtk55YIX
	 W84sOaKOfnxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E63C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784525434.17335.3976980784852691177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eac10c733be6d4e8236b5adf1fbfc5b39af0cc5264dd7a1b90743b904a1be2e
Date: Mon, 07 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667845254
