Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA0E375
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4618C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690689728;
	bh=Io6Ononw6/nep+IP6pzAmRsgvMXwfduqLVWA2j5h19g=;
	h=To:Subject:From:Date:From;
	b=ojNLNyNyU1u1RdDFSNCHIzfTpu4zwMwl7OY6giyPxx+Nw8NRd3tH5wj/cbe+XJZ2z
	 gSG9oNGIOGoNqqU2QlgyjXKvyf9XX2EP1R90g0kgHG3/WyGQo4e1mI4DdLqIih1tDV
	 JKQtrTD1m18AK/o1qFfaMMEIDXlkx9KqlkKxcgjWl7QNbdNh5H0JrDjStxtKBjuXnF
	 EYQWFQsZLDDf4nd3XJuHSw0FAnxYMFrqEs/MgraS54HrUbkaVK6c8KbW2XOwTartQv
	 TqUblQw9zulSMlDaVPSAOE5YbRTbb0Q6i33qsmilKmmy4BnDIBrmnwfiwPZYDVe+NT
	 woREMJJmgllCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C3CEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169068972868.21756.8746105403694117530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a50c04cccdf0d5985050763d9df2da5987a549a6472b5b836fec5266aa3703
Date: Sun, 30 Jul 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690689728
