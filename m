Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2877FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72324C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661993453;
	bh=uiFS/6C32E/0DN1aGfe3B58Pgo2HRsFkxpfDbWGTnY0=;
	h=To:Subject:From:Date:From;
	b=PbNe5KXfXERNhgdztp9yo9SjVVNcPdn7tc98wVK8Fe4judrfO62trgZrbyGV4hbdx
	 n1XiwLIypDadCblNqijjrHzxQiD10F4vtmx82oswC4oqp7aPbs0dwb6Yp5wXIA8K9A
	 pdhHjohEIDb68Y1AV8Iphbta/DAcslZA2AIj75V3dI7RL+OeB62b8l9EMYleIkngZR
	 /Xg2Uu1dhqDtyv+RJ6liCEcEFmUnXKPFciUidLMlrkbmsAt/6zY63BC4XxtGfvQWS2
	 qtiwbTGwmE99L2AC1i+IxbTzKHFDTA9gdemMIU3deqgJJap4y+vonFx3hUnj8XXNsc
	 qEIj0cGsmwgkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541C4ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199345333.29454.17328952820887615791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de752b8a572a4ca6d3a575739420783ae9c0a77aa974a7cc3d087ecd149f0012
Date: Thu, 01 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661993453
