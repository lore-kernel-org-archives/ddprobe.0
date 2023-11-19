Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE58101DB
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5UsUuRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B352C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700426296;
	bh=qKOmCFcsS56Vb7T35bLwoXmQr0dbEjNTfC12xxppuvQ=;
	h=To:Subject:From:Date:From;
	b=M5UsUuRNPdLXGzcS9T8Iosw5tY+xqn8KRcjepgEUlxxaDqWD4D6LuQKeZMczVtmKf
	 +GrkHA81lItQfN0LeqrjmuLZYYQtJfRaOvF+swGQz20Wl70nUF4BbKJe0aGcTyOriY
	 IAAIwE+EBsHeIQh7pgWmsalxbi6kLkgaGtFVQYcpSgqZ4D0JfF89623EsgulNqkL89
	 13kFXA7Y9GaZU0yguOeQ7bW7lMw97Qpj9BUpITb1+i0xRMYkh/8WH9e2hJ+AT1c6ax
	 +bDjp3iWa5Y+XIm5SF2b5qjYrUoNlDckm3NVCkdQf0EURbGiNAlGCkJ9/XZpXMp2jh
	 +3UTKZfKrmJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6366EC54FB9
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170042629637.10393.10891197388947865509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260b7db29b442644cd126191ed0d60807cee365addd67c6cc49219eb28afe856
Date: Sun, 19 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700426296
