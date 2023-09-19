Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD3038DD5
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD59BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695113708;
	bh=PhCpKBvgCDEs0Lbb/OCYYTt9CtxmZvYlvrvVhoGqDJU=;
	h=To:Subject:From:Date:From;
	b=FuN+zGjMoqg3LhdMeu6cbM49Qrmop98DxZlVLl3h9taw5grohcTXb+gxV8u1Fs4QG
	 wyL4eYaHSKq2iPojYhnTY5xGhm9WcXceceiherN+irYDusUFqV391HC9ao6Hprdilh
	 29XsJfc+v7s8dbg/cRKSlkZUplc3ApwSgMlDdxCgkKbjFu0kaH6wPQ7Wgpv+aQqwg7
	 GqsQu0j9g5YZDDMEot0XtsBIlOl6nkAsXsj6Qr36apE4ZsuGis4esTIbxb9Dj8UdtC
	 tjEkuOw9G350LDrSuNuFKStSEAxPJ4v7kQtlnbRgQs0wzpU5ix5IdgZrrbvCUbFVpN
	 21Wemd7RBKjlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BF9CD54AB
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511370866.23891.14908602296978878726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1365981504c787bf29cdea5378557f6431b3602fd9d945af414991594b0a269d
Date: Tue, 19 Sep 2023 08:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695113708
