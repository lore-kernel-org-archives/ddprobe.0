Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68221363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71153C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664500853;
	bh=ufvMs3/zPRpSMXVuzBIK19JwDaOuO4mzZvMrIw25OM8=;
	h=To:Subject:From:Date:From;
	b=tJruraHGxVS6EUusVt29NZI2mk3PRACn+RYshCuOhqCvajPqRuTi+Iy5jBAgjytTk
	 D5DUILZhaMPQ6xNOMszl0m9iTc6aaMzId3ZFG/Wus9gytawon1cUibfwUfDrc1dA9t
	 7Qa2TGBAF+WnkwDm0cRdBgeelF3EdVLqA10ov7s+y+c91zpoIIR9i9MdR8Z/aXvz9S
	 iWDaD6zvXwx0/5rXo2I46lITOOK9ryWJGo8ijStnvIMhBJKJH+X4VRjHctg+ZDqpMO
	 Yyj93ZJdORBUTuY6ZUq1WVOztWudQH11MJT6+4+XAMLyT5N3AmM9jEMqdTy9/tsfBO
	 2p348NyZWYCpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51822C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450085331.8878.10359904315933523343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4348fe3e5bccb5772fc061f29e044345cf537c78623ac92ed4c569dd5167ce72
Date: Fri, 30 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664500853
