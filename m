Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EBBA46
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 100ECC4339B
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679202246;
	bh=pj0V1h9PDOfIhTI33AerzNr0//jD8lnXhOJI6Zcq+UM=;
	h=To:Subject:From:Date:From;
	b=LvPLVpqBhJJr4YeJ4YOdoRmMzC8GAwkxavmcPVe4qXcZBpj7nIcdZ5/Uylv0Zqfeg
	 shzawdvCCI21wASDPcet86aHgadSLdv4xWKgzb9M61NvH097T+SXB+MPP+gJqkd0bK
	 WFS4+QEl9diouvK/5u5q9V34j6bt37FLsSPJ7PHAafkGdXh+QcDrCzt5dhXjsebkeI
	 6QhOY11VO/TEZ2EovWxGAISDbKFPmjkbKLQFyJEviwNwO5xMmckguXm8w5Y6EZn6r6
	 5fWj6bXpg6tAJYFsGsVSZBibm4rrokQsOkfA8xI6syG8Dd441nvmbb7cu4Uz73fDKd
	 ZrseAp+BUrIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E502CC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167920224589.5993.3256504256493247591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb769193b0952f6a8c62b4b813f6065197d56bc7f09c1c492942494724d0a524
Date: Sun, 19 Mar 2023 05:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679202245
