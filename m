Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA3553AC
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 07:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C822DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692085988;
	bh=4e/9r9ylPReoZGXPxqM8v1cUgoWuwnSO7U1qlsRM1Bc=;
	h=To:Subject:From:Date:From;
	b=r8oQGXjQkRRuUMTUkhV/eQWMIJcO1gGNwA7HfPVkZFeA9lRGGHlq59SB5/7P8qt5V
	 YZrLou5Kus3sMMyrqwRq2vkxDiSzRzUuBKvT5FrqgQeqEmr+U0R8bWw2W8fhy4CbH2
	 KJ4bLImekCOiJzySAHPcxoIlr/jVWBrsKhvOhWad8BxQNCZKPxqilDfzd8TiwGDT0C
	 DsGogPtaJrwO1dHkbAyxUalQrBdAGoip/R7j6QZW9sSxHxfQgt+feh3RdPwc9lMiw8
	 i7Lm4d2q/D9VUKOTf4IF8r+Xgh09pvUMXQPaLaIPqHKeciGioGOgBB5SRNkWlLlfor
	 k0JOCZOYhZ+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD0CC0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169208598869.18302.661567180640941539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf15a4381bae693f4101f989482de778370dd8c38139bbdd5f682cdf4ef2b5a8
Date: Tue, 15 Aug 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692085988
