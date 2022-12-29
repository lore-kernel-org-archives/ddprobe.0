Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30A11FB4
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9675CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672312887;
	bh=CZLHXvcZnyxRScD/v4HPQ70qKbUVtdqt3D6D22phjJI=;
	h=To:Subject:From:Date:From;
	b=DKUv80/IvJ20O70OIDtt5XYkl5v/bPgjPBQBsOFn+pMK7wMsJhfWQ3Gardv/lTuo5
	 qaKL5wbTmdUe39k6b7OUdtsCie0NGnXp/pVOJC9wz3FjqgexKaFozp4q7gjuLBoU2H
	 hvWjmsAz2Xsr7sdO5OuXowA6lhC3RS3hFoSAMrbvArgnoO/PX5eio4i44je5z8RUZ2
	 CZeI/0JNb0wr4F/EqVNiKhN1umUP4uXjwFuxwt134y3wERvW7kBWP6YDGSms0Zceck
	 a9fAg4405W2cVQBB0xG04Hj8oUtCAghLSWlMFG2U4mVMWiX1V2oBJezKzm+G0ZVKTS
	 XJ/KDvvku/OYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CADC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231288744.6389.18217433074433818752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7193ea69106a0bf82bf6d0170d7e19210ccb5285a90366fcd91a158bfa96eab0
Date: Thu, 29 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672312887
