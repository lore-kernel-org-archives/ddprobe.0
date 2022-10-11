Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07123C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DD7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665508853;
	bh=e2nicKJXmNPm6TY9A78TTSFBEPzAsjT7wfpBanQTuek=;
	h=To:Subject:From:Date:From;
	b=G0/5/t4d1puioj4Bhkb3eZOlKLxXAJWJXVuUCpNAlrAWqEFSJLCXq2ZI7MH+Mao3k
	 yui6gXZpImgj5CVoebX0N7HUV1AO2z6BRH1WASk5510bgqsiV+glmazDS6DS6zkCnl
	 ApcMvXVXKewWCAuZX6Agt9MefWwbQ6kIad4/T7gOHLg/2qmlo7xfhj6ZLdQs9o6B9Q
	 wj+yLJFYDSlGATnPnLRUhTfusnWn5+R87O8vH2QcO/21oJzSl5EJmXnMzy404whLAX
	 7zgmUHD6JBtceRppQ/OsMd3IrgXxAqpTVy1AqAY0hNFvO1PG38YlCYRlnbSAfWkBpJ
	 8rL0pdz446zTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59818C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550885335.29735.9195372286046332451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d260c293c814c3d287a8743c6c8302a9eab1acf62e97445915baab537385c71
Date: Tue, 11 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665508853
