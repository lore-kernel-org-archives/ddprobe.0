Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1DD23CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71925C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670241054;
	bh=N/g1MIqTesR7F3PdBdopAV4CsZA4DdUUJiBRx7bXjdM=;
	h=To:Subject:From:Date:From;
	b=WgEVCakpmbFKWHQQ2esAGDxbjyiTOhthrbw0RGCKomIGVX0kq6ItmiJWruvzS7Pd6
	 7rtQ6hG5wJA92ChlOBxc8nS8Mtg9nN2NX4evmwyGUGZz8X+xqbRU+vPjWq7UepoWYV
	 Wfu+XGRGIcO33wYx2pMQ4H5P78GvCbZNRmtRjH5sNtjHo8+dS1SUnHP9Nkf9VkZOcy
	 0RvcmUZk7l9cfq4ATf1kjkwqJjkrrhmx2ADY+jMZz+dh5KgZPxdbFXp0LN5+t47Xzv
	 Z4gmoplAS+OR3N1pFaeFeor+AecfcwTiJxPQdiTj/H4rqnABdnqkUhlObWm8Kj9hwZ
	 NC9MwxAgUhMvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D8CC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024105435.19766.7133980892389223089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959856a1a3a6cbb1e49b9685226b1539d1ae94ad2c014d2b57a310b7163a6118
Date: Mon, 05 Dec 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670241054
