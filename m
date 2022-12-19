Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E4D363
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D62DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671409287;
	bh=5vt8pA9hBByQdxFMiAdBC5GBruB2obdFxXjU7ICySzQ=;
	h=To:Subject:From:Date:From;
	b=ir7rR8bM1U/Uo/oA8DrW0PGhR+201YsFElzpseCVSAdBhtbnLjxDWnOodxGtN0Bq8
	 PUa/2MQWHddabgL06RrZW5D8FqSMftfBm5xANx3l68AILZa1Spe2zHpY5tf8I99egP
	 WrhVIOl1vuW1O49cJEbOfRc0gDq5BnQD5Y7tusPqy4Sg+W9u2e5zFj9mpW8IVgfPE6
	 zxFtW9PyC9q2uTO41PYdsNtLqYd2uA7MrKH4XaTlpu0E/MPekjGQci2yCqd/2AYx1u
	 3yQSYATB2UZ5TvuSqQfTW1drV9ROjv6q+nuS7zy2wemk3CfzN13SywRAhWEYMmAke7
	 35mjFtZb8DC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B81C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140928739.31319.5147671089745484711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a536e3406fb6542aa901d9279159349d55501a49490498f9baccc75e483dfa2
Date: Mon, 19 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671409287
