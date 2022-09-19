Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB92923A1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3FAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663580453;
	bh=udOVQ2T3oNs1pFL+JCMOupLIL+woop2H1wGlO4cgX9I=;
	h=To:Subject:From:Date:From;
	b=qdyv/BGzeRICDOA7OrQI9UkKU6Xw8Xeuy4hzeRngpJeWJk6/pno3hcJDq4v09MV8X
	 nFNJgekPDLNNwJovoFjdsfkWXcl8kbPXPN0nAv0SrExGpOWJ0503KXZiUgEtcF+k+X
	 +XaZ9PudExs3W15SsIkcwxyEPnOv5b8QZhhHdZmH4OXkW9Zwah3CGd9hvEmLBw4mbQ
	 kqHcVCbIDwjWdBGqA+LknE8nDqAaGOBlaUaWIaEsFwpyHR9g5vY1XdnUb8CGZc/8m5
	 Ae5ltiZTp/7mRZhXlh86mbQO6JmFeWbjA7jLH6M06Gz9CXIgnqEYdsrWxzAUUb1XqT
	 AxLeMLqult4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1A1ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358045334.26560.6514658031886772235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fff13a9907867c412afa80bb758688095edaf5663df77cc410d9c18562e6ca4
Date: Mon, 19 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663580453
