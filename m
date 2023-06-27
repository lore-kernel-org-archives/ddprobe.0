Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8F010F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C9CC433CC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687860788;
	bh=JB2yo9q1RSX+8mZjlejxDIiZCUNEwYgIU+GftfC3LgY=;
	h=To:Subject:From:Date:From;
	b=VDmgrooh09Pu23HPHlm2dqMnpV9ltm/x/sunywWnFooZPgT+FSkULNLcqTw21Z3p4
	 DBTZClApKPipb5IAkUr3Xd6Tj8aGa1HRV/Yy5aYXnnOCW6M+cHRt2ctHdC10XN40uf
	 R2WqAungmlRfCmuR6xFNX0/+gAAANYnm5BvVwh/Gkn8QR3TBxNTsgeVUDEAHK6OObJ
	 qzZjnpiz7C1OA1vyTjYQwKMrUN61NIXAj7Zn75unzo5L/bdtcDvE+SRU6RdYldzNnH
	 sV3/YCgfh+0RgQpoje6DVuifoSO3cq73a1RZAThw6K/iQd5xyrO5wu9OQbnILqTCZQ
	 F4Ipeki/TvUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A54EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786078866.23781.13480944278552205246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349d3e584c8029824f5d5c8156aacaec5a0f4b31013a4f4908cbb2d261a25e2d
Date: Tue, 27 Jun 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687860788
