Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35F815AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAEBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663122053;
	bh=YUozykl1b8CwebC70hc1Mjf9yagOSeyJrVK9G8De0eQ=;
	h=To:Subject:From:Date:From;
	b=N+w4unKsIWfgV5fM3oceXegQjX2KV9Sm/GMSn3usTHGvcaNzxBGTCb4NCG51JTGJu
	 LU/eCT/w9BiBCASQNAYC6X3BswN4Bw5/cFc2WgZHlIW96Ab8MNBvQkA/69J06LUhj2
	 aHAFq0cvGtx6egN1WpqNGO+8DxJ/uKjq499o0AD2p9ATP3hP2UD3QGhZzKrAYqtOu6
	 b0+AWerdQlKOc0MfvwDXjOpH7Sf8yJCocNB0RDhDVSTikF28AlsnxOLA33snNRrC6P
	 QgFrLvdkyDG/5xgTaHX/g9/E0MTZ8lGuVl6Eg/d5sevVqF31WrcYq9yED3PblsCduP
	 rLtmBMOlUwZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529F3C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312205333.32279.9472245556469966386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dc95980b2cb2747b748295ebd98ccbba0ce349ca608d10d9e648aa6f799df5
Date: Wed, 14 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663122053
