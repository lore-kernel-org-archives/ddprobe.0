Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EA7320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC14C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663068053;
	bh=BZjbQ4MG/vpzr4YFvifhUV3Ys2hD8sztJduDvs5bnqQ=;
	h=To:Subject:From:Date:From;
	b=pExAAeoWpTtTP9MDKwSJ9SQL11k/XJSs3Vpg01VUd0NSQGCPyNPfu7G8dt/rEYASl
	 SwxWtSR5LErgR5TSkJLRn90ODpFMlmANspqfsxh7QxfX9DcUmyY56fTADok3zwK3pD
	 5gj/uVVAs5Q7jjgchSiBsAQ6EPCyj1wxAUJixCUg2ABLGdmfopEFJjBnOMlD9qBVRP
	 QgrEx8AcXusKJnXiagTpJblrzmkfa6BdOxSOPZcJL/dOMK5eO9Etu2abroBB4hCB72
	 JCD3LE+qxdUlkVmk1N+dH6PjZ1roKGaZ6YYVURXJCTk4ub5vbd8WpIpWinNd3V/ajR
	 g3cjJLaxCeCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5150CC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306805332.13526.1052149081818429038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7833ce58ce6f9419697b31fd227f1536618ce70d6003d26774ea119c98fa115
Date: Tue, 13 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663068053
