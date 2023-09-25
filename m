Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620D110E4
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695626108;
	bh=mWf4OzC6GiAFJhZMKhmR6MKG3xhFjwmvAOf/m933RMo=;
	h=To:Subject:From:Date:From;
	b=IskyeupelhOMiWpvqKE90IKAtjEdBby4Q2ljPcFlg3qkUApr8pcGfOsTIdegtkg3i
	 SIw7jmBkLdWfDWLwZa1sjq3PWM1AfYsyULLofxnEUOgpGP8Zb5dWghTjUVmZgMKFCE
	 1EzvR8bL+bIVYeWtLSScqRGWg97bJvJvi7D0Du927AEFNMDyLWVYCucpbC2FEOrOuh
	 1d5IYhUFrorqWhk0xtV8bQujDmGFpZPFqVxf64k1X6hfCEOlDdnH4VZMM5UPPJ7+la
	 FhkTP6JMNYlADK955Pv/7amhX1os5Cj4DhOq4yJSbYEcCTZKMNF84Ypg600uUJYDHo
	 8U9j9FIpufCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8FCE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562610871.10830.2698855774014399486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98dd1721c4bc547469cd5ecae961b54cd67b223bbf713d8ee03755e37850344
Date: Mon, 25 Sep 2023 07:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695626108
