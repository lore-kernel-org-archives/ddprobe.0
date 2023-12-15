Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E591208BD
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+y/Sx0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BC9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702634896;
	bh=EWGJeeaXvg+YFvLwUecrSbst9V2jhFJuI1JO1b/URPY=;
	h=To:Subject:From:Date:From;
	b=l+y/Sx0MqLH1e7kGO5HG3bY4jAc2EBYOKBcZdmLWNFNz6iaA4MQJucm1Rttw8iP3I
	 IKSzqSKO6hgj00DCQJZOFc1AShrMKXTGOJ1nc8zx2H/USiyE8fLNisbSbaMPhq/WZJ
	 LkPXlaepRTEOncizj/l7F62TmKE1xG63/NMwtPPVwj10GGGQN8hxVqz0uoVCB1bXNA
	 Hu8xfbYiH4/cNkciyoO9vq8BDrLylfnyLTnyVStdSwMEC5mw63vW2taBBky6BvNVpo
	 YA3QMPBtlcbjzaIgsZr7Glxzv4cI49EWNrdTFZopmIqlHz6JrZxfYWug8topaaPHVZ
	 PEhpYp+j0IFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5BFC4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170263489638.21860.14673159545600274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7589300f8173187605d2d3d54132c42d32ac295b2b1fd890893e1c17b956d121
Date: Fri, 15 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702634896
