Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C934A7B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F3EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663892453;
	bh=9QfRG8MptpxyL632ga4EFeUaZt9mNv7eNLK5wnKM1uA=;
	h=To:Subject:From:Date:From;
	b=AfO5qBtMYYzSaIFNuUipwnkbOPWplK1LDf2ZfF4pfdNfbqO8HS2ElOxD98uAnExtj
	 rS402dKZ1xEaK43NMgGxuxtnnlUq042Ppso0hKn+FVOWiJwxuuw9wU2ZeEeEexXLdU
	 BI2L31Yil7cJaKUdN0HWea4Nzo5avfUGV1vfQQ69uqrMf5Ewg01tUczTMwQPKxsQtj
	 XKpfHkxm1lP9MKV5VXE/1dkKdJqzmCUIRzRYuB6rnj3Z/v3rW7YavyzHOqKVu4PU2F
	 n2eY2tUub2HyC8QFWuadQzcZ+o8eePL50ECpiSBN57r1z7DH5/VQCNGoJw4k8rRTDK
	 D7RDgsLbPAcgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536C1C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389245333.8233.18174216251982340863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325d148cab99046531ac0475d59d7721ce5ff65789a65c99de850683ab960f6e
Date: Fri, 23 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663892453
