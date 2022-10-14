Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD33620F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F29CC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665754853;
	bh=/zs+fZwWU5TbB9g2cedlpxxl2jnIRy1M6qUohxn1KjA=;
	h=To:Subject:From:Date:From;
	b=n2K16K4pPJx4+qkjEa7UXFcQUPVlZ7hjd4BFvi+e4ADmfoMjn+gBi7qZ2uhGHzuEA
	 5Ns7vKWYJtQD9aOv/vWwlVuqlQhZn5SvH6RxTdiJHOw4y6tK4cEWBRX77AK611crAp
	 A2ULF2TjURcQPjzWJ+uR8Xj8I2F+mo14Gu+/h7pnqA7qgbQCfiNGBe06k1XvG8pmpy
	 LdCybGumCibh9c60tQPzJpNNjRg/ChT1xoUbJ8s4zVz8IawVrvV4PCmwCNrL+1ukNP
	 yioaA3M2EQ0QySkj02A963KaWVzHMFE/ozSHfHRr1yw6TESMmFSiaGlugj4VjaRglv
	 GFbkmClA2qM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6C1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575485337.24746.8520320879358288526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8f8a20d5f5084d7f05852fba52748ceec81156d5083314487405a39c50252a
Date: Fri, 14 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665754853
