Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABAB17CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EADC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669555254;
	bh=L734HpJmO1++ZlNBvaZPGxKmvMNKtvve21jSEWbFduw=;
	h=To:Subject:From:Date:From;
	b=qEJQ+n8u1yoncB1dSZ+nMXD260Xy3fztLbzCOmiCHpT44iuiH7UUIr3OeKv/HRlZC
	 QZKKwSm83hxJf5quIzxIhUFY3zpJzEu5FibW5XO0fCIj/d+HTGgxPjux9bfhEwrLjC
	 PpZTq7HQKbn+OQtFbLjShl6xUZorFwyzMN3ea7xfj/FAg+DtMOqivwdha/31iDSHFW
	 t2lP6hgvU6fhDPM3/pjGV2/6eL7mkf85JwXEIvzdm1y28tyW/CwF21U1CuVNBXbgtC
	 zQV3Fu0775Zhmho/xcGrvqnbU5GGAPZql7JgWxOznHCSVYbOfhmix7LBj8mqVOzrUH
	 5ENlwHbJ8fnuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546E2C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955525433.11355.17975400555848491151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965ce8e215047cc86123c925ac7875c0b1d32c0db035b15a6153314062723177
Date: Sun, 27 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669555254
