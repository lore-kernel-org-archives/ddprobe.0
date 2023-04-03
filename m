Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35044137D
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF3C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680504365;
	bh=NMbzy+cHpJe8ktcIAmz7XRNg7Igzrd2BML3rT/ibAzI=;
	h=To:Subject:From:Date:From;
	b=We9yR26YzJlfY0IyTPczpHXMNZzVJcIZibGYKUwjY3WqAdeWC4EapzGw37xi6DGop
	 DKPviy5t9477BP79skTZSSMKOSuokjyjlICE3YykbBUM/V7wunMhjP7CmD9erGt1+6
	 n3b+G6SwlrvEsg2MUjHblu1Kpiyh6+jyx53x40P6o0fdJopRBisHVjDrlR4DJJv0CT
	 FDVPXc2Wns/pJwy18qUsLbOhUMaMEJ5/esHSreC3ucfFuXRRpqzs34TXWUJEA8XQgs
	 OOYzHBId5ijN+s1B+vHGtXXLa9mggwk4rLOWFmRrYPMtweoxYINasLeN2pHbczPefk
	 6fAeHOBuU44Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94AEC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050436575.21188.15486804042284019677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d56d1eb0160d903fb89f9b9bc28eb026d479f83ab9559192be86bf487f0963
Date: Mon, 03 Apr 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680504365
