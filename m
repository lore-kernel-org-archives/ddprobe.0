Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452BB6FA6
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAFACC433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684812786;
	bh=eMhqj6jCE+5XXCr6dsBD8lAysh9SEgqxsiQq7SnsSaw=;
	h=To:Subject:From:Date:From;
	b=OOCtYuvmgFuwMdrSyyQOaztE1FEg+4Fl4un1wGC+sVTLotUA2EAb+ShPCcPJRYCSg
	 ax59J7MpbFsSYMt55n4THSpS2vawn1duBB5nVkDH+icWD8pGNEOo0wCw5XrMYIHx7f
	 MwaXAoYLnoOEgpgpCN3RF3dvA6Jm3H0yPD/VE1ipYFbU/1HADYF/PxSUQqHptK6m8f
	 EuyI8Kf0VGKrYt8Xfu2tXF5ZzTxDbsnyv/y2gY+cG6r3ErhYBOdwpWMXCQpzX+ErYa
	 aRVx1GJaH2iiypBrvifxSM9CbeeYPd7DACpO5JXZxlyZgK5S2ykEaXdUNsadL6fYRS
	 I9V7d9ETSQxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C547DC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168481278579.21895.12843213354250347015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfc09dc9eab8c12b38e7285128ad72addfaf9dee5d79c19b521a889b9a6b974
Date: Tue, 23 May 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684812785
