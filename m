Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E26237D02
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOcbmgOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AC5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701188296;
	bh=X0/kixaaYCzqfeJm6Db3P3DjvBcHrP2I80nPQkQTFL0=;
	h=To:Subject:From:Date:From;
	b=UOcbmgOsYQbODBmQbhwf3YLYKAkjDIvyyK7Hyq8hv5IcAJt5Xxgx4OX1deL+LR1uL
	 SP8dTf38quF+P5U3Q/pI/cEpmCYVpc3Yod/p8ht7GRNThj9gnCKd1NC4MtrqhEPGJL
	 kDdaMc5wZUD6N5iLWt8V3cn/2hPAoDL7BQnetoJ/lP6x0RlzOw1cSjVv2ka+OLgDum
	 w700Y3VZgFUn8QnE2RX1+d5HTL5Nfwm5baYi0n+SHfr8Fn7MiTk77qIi4V2Glor6ir
	 ATmHDLARjjObo4fFQxLRLkVs/IQYRXOLRenadqa22qSihRtjz6yeUD/CJ6E7zJjooX
	 hGYSrwiqocp9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C68C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170118829639.18590.13917401024339966683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b38da0145dbcc862a83dc94724af8b4bc024e600b3e2f6404674075479f8eea
Date: Tue, 28 Nov 2023 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701188296
