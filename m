Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16912564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3DFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672478487;
	bh=XMYEhf8PhG9BGZxMgd5knMfXdzQmn7Rw6W5NzR16DMc=;
	h=To:Subject:From:Date:From;
	b=ODA0h0AAONgp1uyzP41PoYKxE4OR+6at1aw9FWcmScegvd5wHbzVoWhIYJNG+CYdR
	 pcQ8pNjFJhIxcdt5PT+Iqs4QLDxUiHIIxGQOU50dKO2EvbBsgqY3XhZ+CcDBLlOaKm
	 ZBpzOoMzU+Ujva+7wGPl6aP08G0UMb+cOw9VFQrm+vrP9h6EJLQmL9xcA5QcqvKboX
	 HXocDolY0JxtkWJrLftxH0sZySBB3P1/EYpktJVYSouIDJHibGHJwAE+VozF+QtoIq
	 XvxlLvqfZw00JWXhfsj4bAv6GOO4SXEkBCr3EMWAncufR2oWdvdfJbksMYLD/3znG+
	 XBhchRRtIMmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3FEC3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247848738.13278.3512576287895681738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f44696423b01411bcc05f6ac92664d9920cd7d67a1f9ea22cbb6fe062d92c79
Date: Sat, 31 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672478487
