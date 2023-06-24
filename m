Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EEB362
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7884C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687581188;
	bh=VgMsbKhmPPNe/J6njztgKhtkZN4Qr+38Xj2HcLUmmq4=;
	h=To:Subject:From:Date:From;
	b=YezBUB+BpupNkPNkfJszeo3+Ec8ubzph4aWn24mF4UBXyNLYik0R6x+Y9xDJELPgh
	 nyPO14GrA/2UNFiLnwovD/aK9dXQbBl7uPviVdxSwQeeFDR1gUCpAvqkn+Kp7YNaOG
	 tTyyxJJDcANit6u8VhYWrgK8k6Hn0H5wll+K0KIWwnGfYw2JodZDGXHfWXbQyu86WL
	 bbSdO5KUnRNyPdx2Oa+vMn1YC3lHMniIx49RQyWkfry7w9O8uplNVgdPvLwqQ2HQIj
	 m0V/PZgff3ggsIBeFQGEZoTDC5ZVSy/ApndJXoI98hMaTXXYC52oWAu4ihVVPjMAC9
	 u+KingNKHywuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD185EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758118870.694.4887483916424872259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483f36035b05137acc0684dcd87c92035f16eb01c0ce8e83d5628e0dc3f79d02
Date: Sat, 24 Jun 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687581188
