Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7962F43
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C996C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672260687;
	bh=uQEAFpUyr4zgtR/eVdagoiNd7+hgbILn6dkDdG3CljA=;
	h=To:Subject:From:Date:From;
	b=PLRa+LhinSCmXuC2h1E7pp6bSMjxUVQWh/wN60+YzPrYySgNlDM+UWRAjjMfmK8wL
	 Rf6KDSQSycJFiUlcVtbgWoWuGmv/cyZK4XGQ9D73BhbeDsd5RnKCD/cVdRGs9hQJYT
	 fwYzbxip9HB6ZhmhBe9A/W514a4xUhVZHMhr3UwMQGNrr+EfQTUuwXwC+EuDqUNzs8
	 mKabC/TudGIl7YRLH58lVQf9NK9O4uVPIaGMcjZJiunEssZuip6jGMieiKAI8Asfrt
	 xfSduMnsNq5pEaWmPeFQBziShOKLYs8SLIJZ1VXEP1nvMVd118Cq/mZZk/wF8sioxI
	 0Qpbp2jvXsrIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66942C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226068741.27288.14290871675763560793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47868b6ed9c0d0eea34fa325d5aa3f82c55c574aded2cf3d3d8685ce8b4ee624
Date: Wed, 28 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672260687
