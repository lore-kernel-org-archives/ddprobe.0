Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009041C740
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA4AC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687377188;
	bh=D/l8r9aWJkPP1noi+HaySPfm2gg/1qBc/QjPE9MBhYo=;
	h=To:Subject:From:Date:From;
	b=o5Y6IMAmavjrtBBLEmYn48FT5iFI/rZydqAC98YpwBEjFNpXVMDa/LomccLlh50Kf
	 fyv5KHy8xkvQo+54kkkBR2xvjUGyFJQSSKnmcFqdKLznfjwTyQ16lyjBy94QFiD56e
	 ZO2ayV1uh0MLLSw+jDwKxFmB+1GbU6pQs99spx9xwxOr32I59HWBGWgQqfezRZQoQR
	 IZrWY5IdgDmeEgiQszFdWoWlNlRfovrv9wTgR3dSLkavfObmZo8LwntEjVNJj8Hr6s
	 yplBgEcdWuqAZPgVzIJCswKoSUQoXrb+OOo1XdaNTbIncv5H+/bz+0YI73vXNfdY3f
	 spS8Ew8m75cWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1842EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737718871.15676.8985939084603546195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a738b3191901cda10e46f4c226bd86f239d09d6dde2e025fb56565657cc42be7
Date: Wed, 21 Jun 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687377188
