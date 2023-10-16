Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7114D79D1
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoMA2pfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56FAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697434028;
	bh=j87HeSOHAqDH293GmOFvaRLSXahtol432XoPRQqiyO4=;
	h=To:Subject:From:Date:From;
	b=KoMA2pfG00lqYblHiti0ldr8nXOxakDISJ1ioybKOtUfG955Y01VYMr3FwHTnbaTE
	 3gGBj3H7OazpAZ7suk+lyTkim2bhL68I8OEKBjM+Si47fixmSvIQDkxJ32F5ADImJN
	 dQXn37DA9dYnjrnrZsXLf3XsfmvLYzY7A1mHmtvSlGusOnxoF6Ogyzm8oY2q0u4UDi
	 xQM9XANZlu+m4Et6Bp5sBUxgVVpTSjY5EWIv9wvpx0msTFCNy2azabGM1uz2Ks8vL5
	 QHMc3ADuqwlrqdW0BKXFm7w0/qWs/bqGo2Z3JeKIgwUTU1DUmnJCKpEpwQ4PPz4GOd
	 JDpUJpHrHFXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D8ACDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743402867.21300.15993571340919601048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1d0211339a24d32ed10691215b9fb6bfef1468085b7fae1839893ff84961aa
Date: Mon, 16 Oct 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697434028
