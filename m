Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94ECC15BC
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 061D3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686454926;
	bh=N5EkO0cszLBQKaUWRrR+mrbWemq1yovMF9WSEEDyFJE=;
	h=To:Subject:From:Date:From;
	b=VRxDFDHlrL6YZ2rJbmsly5pTEDPtjHOPcOxrwQPRdYWWh3CUiqRzYqf9R9mehphMF
	 0dfLEl059Icb/bN6fJ6SgvTpxwURa9gn3/HB8C0dZuyaUij0s8PjGrVbsUiUjjFVFF
	 hs5dyfy/yiMAw9yyEnz6QgOyU0egH2Ctrgq+T3pW0YkIFswdFCxWjZUYI+euhWKd85
	 z2zCNlPj1WKC4Di/AASSaMXEE6kkFABMOFH1g5ZNwhwmfhmS5Ozx1OoAnjemCa/TJD
	 zcBdNzhTSCrE1jgUK6RbfQMDI5pk23k4Gu7oTS05Ci6g3dg5+ZSXZLg0Dro3sJKxQn
	 65eiRv/UIkVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7949C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168645492582.8781.13254166008515861016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f6f7d966f006a34d112b9d2023ddb163a309cbf1f190ee0b57e0d57788b95b
Date: Sun, 11 Jun 2023 03:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686454925
