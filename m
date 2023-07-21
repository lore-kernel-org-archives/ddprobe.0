Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4919929AB
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C804CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689943928;
	bh=KBsWpVBrSq3QcbU4HedZHZd8qYQqN+mG1djvEsiCoB4=;
	h=To:Subject:From:Date:From;
	b=nr7MSlT1FgO6zFS9Juwi2J5nzZatcUnzvYayqHePHAtdtb041sPnnncXIbhO/GqT2
	 tv8lGkKqBkT7BdK5ayMtFb48NSoIRzGD7A8VZ0yPf2RU2b67g6KMkv9p97uaAUcGaU
	 5TP2++wXNq5vqp+zNWSZapFCNHpID7fm5po0r297ZzCP6l7E3xFAh/tL/MCmbhLxfp
	 vsF5shyh+R9ryDKtmTvzKB6JUT2xqIJZSV+ieGV/fG0Agb4PZtMwThRX5UahHkySPK
	 slBZ8LR7rkLXZfQRU97bDyqBs1eLu8h3R2Uw3v3gfjEEgkhJtDMuaNiazy9zF+TDNo
	 GWerqUoYJvBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B3AEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994392868.25039.16652881468841515503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0936644378bd086c47151ad5b65674e89a572da16092f2df04cf760aa713355d
Date: Fri, 21 Jul 2023 12:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689943928
