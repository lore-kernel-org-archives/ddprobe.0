Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB6B332EE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC11DC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685725025;
	bh=j/wFMsFuGplZJKYQFbsxvvNNDc5sgGTax7tdikYV1jE=;
	h=To:Subject:From:Date:From;
	b=DmVdhwxnxoV0GF8GRNY2txjJ2Z2Ovm+Lw3RPaCqVqOxKTPxuks3tCnzwTC0a4ddIr
	 QQv1jci2VWhQ5Sjuu2mMpQ5RX/PynjKP+yNAHkYfHSqzDj6LXAJedHqE00TFROzkCn
	 IL3MrirGXspAmvJoGE+v9x1K+5p1036JZM4Sqf2ZWUoeaGmQ22pDqh5f6xpizY7x6e
	 w3mPuixwMpH1OS2jbtvRzHZw7vWo2ozZk7EvUEbXoGS83Aoj2aftNQIOLTFCT9AGE3
	 IzM1Cp8vHcO6m+4r0TtTa97HAHfzSErlEdqBIQ78/T2hICIpXUZJYXeaaZZEp4M/07
	 SZlb8SaAgTXdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B793DC7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168572502574.5743.4648627286558541886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f80432da453e9a2ab9f317ce7da34f22dfbf08fa56c9d913716e77baf0077f
Date: Fri, 02 Jun 2023 16:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685725025
