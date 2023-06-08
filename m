Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4BF22D64
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73A4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686265445;
	bh=E9Zaq1YV8jsXTITxrBDNYF1T0TOri5czMRXjDd0v9/I=;
	h=To:Subject:From:Date:From;
	b=P1UzJVKtr1dCKgsqGGXC+tbHi09XPrBN8VxviQFIdaf8ajJN8LozFRw9p7TFE/Qfw
	 oBckmcvXvRikpbwsrE/k2dGPMXLiQ4ghH59TaVBU32iZCdb5q/ymo6LHfmm3Sc2Ydu
	 UTTIz4aExgirAQr+Un+OsvC9uFsJ5wmO40WxoV5uQ02nlKByC8QL3Ni0Bpw82XJoSc
	 LaR3uKCQFYc0E85qQEjeEs+RE/dyanYYWEwVqldA8YZogG8+FxpVHwK9XDIlv54gs9
	 U/s92+vxssgUmgHYWMgqAhTGQI6tQd8Z8mv3jTmfUU2HUJEKwosdjU6c/+wQNSOyfc
	 XDzoF7IKfv8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB591C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168626544575.10367.9809654088883705755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2777afed447458613b9bbe83b13253b28f8901eaaa5b5555e35f9c5ead6b61
Date: Thu, 08 Jun 2023 23:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686265445
