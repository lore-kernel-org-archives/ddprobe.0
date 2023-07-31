Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F93364
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43EDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690778528;
	bh=ZHvJXifijqIXa6GkULtcEzNXkqvrxbEOavfZa5n+OHo=;
	h=To:Subject:From:Date:From;
	b=Zyev40UupvL2hh+A3UXyjS/X1Q5mgxNKZ+FBVOmTQHHtupmRXazTT03/6TCUxsVjD
	 2umroCiYU5OnpVJxqo/Ftn7UI+nNpP7e7LqQMCFqAmFsinEjvNGDDxGTV1+CEUBD7X
	 g+LhK67HW2DJyAffOm1YWs4IO9JFBs8AEIwlIjosrbzwdqsJQVCjPv0pZ8QzV7TnIF
	 z5+q5k6Iqp0+/shmaqve6SUx+0cVh0sdGn/grENXPn62SEetcZaEJOCzpRlQBuS22F
	 k4upHsw8TPJPljhNEveINRCG00Agywdo64dDN3xXHDr5QUR3ZLiaWrJKwE1st10LOb
	 fdSCyMQTg7Rxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E4C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169077852865.10784.8014535896167472000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763e29ced727ffc5abb9c6cf52d47ba3bb677e027d73485141cbb9d9cf20faa4
Date: Mon, 31 Jul 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690778528
