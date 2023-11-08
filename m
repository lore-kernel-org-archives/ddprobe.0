Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0485318E04
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZt4zjZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA6CC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699448896;
	bh=LpnGlAELAmi7cJBJ7yS2cuX/alsR3AgQIPWKG2PJBww=;
	h=To:Subject:From:Date:From;
	b=tZt4zjZ15t1eWs8lELmB86f9UufsBz4R5uA73fPn8BpcVFTq5xV+DhzK5mD91Ln9s
	 f7YnSDqT9Kr6WOEWbeWg+yAGNcmN0NbX1pUi0pT6WGz5d6o/W+LYVPfk3sdjHBtkGh
	 9LHiNFF6N4EEADQF8Lhc29oYWTaKjMK7UExQacIdXJ06/sIUEU6fKhRGTX5XRAc4fk
	 qT6lPktK9r3/bP1DAZWjrxcNhVD+fI3AZsFDra8/gR6U2kF7+ZBRdUUqKIghxcYHQN
	 qBMobBpfbjBDNEC2UcakFQ089Cgnxc6dD7q6mccs6ZDLOfkYFx21/vcCWJxuWjn3w2
	 4zHDplsNOocHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6467DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944889639.13464.7367901892335482274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1b202cb9359f262229ce97b0556b17e85473784f77a39751014608b939d468
Date: Wed, 08 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699448896
