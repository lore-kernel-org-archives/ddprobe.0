Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881323C0
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11C8CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681815546;
	bh=KhSNsueN+s1p6U1GXBdoEACq0TA/p4F21P1yd4qveFg=;
	h=To:Subject:From:Date:From;
	b=H++wJSsaSrSngNgwXc6jyanGZiS8/sQFDUpc294AG+4YAX82jw4MsJ6eHqR92KH/U
	 hLmKRJyT6UuQ0XC2fmXGQAPoR9HfOfUH1TLpOvniIJoAh6KxP+Gd5y/XZyfSOmfCCs
	 jTBLNN5Or7Zn1HUnk+y3thnk6Cb1yPFfJOc7bFDExBdXMIO9Z0N6ND4zGpiyZSpAlx
	 VXnRXCNjny570AwrTzxGjEWMqOhGyCe029nVRglK/f6Rx2mkM1uTetU223IM4bbhcS
	 fhYA7w3XAQQ7ZyWr/0IiT2UryEHvmvCVyfWIf+UoL2yq1betUPamVfZKTVP8mY5L3q
	 vKiviKEnwGMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB603C77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168181554594.32335.15851619471746125998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1599572f24c18d404d9fd04be802dcead2fa8060cc2eada1685483a423986c02
Date: Tue, 18 Apr 2023 10:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681815545
