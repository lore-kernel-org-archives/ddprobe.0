Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD8116435
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 13:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C768BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 13:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690638728;
	bh=k7X6DHKtLZ6c9WV+eN2lAVK9tOpRMP+GhHgEqkpkQB0=;
	h=To:Subject:From:Date:From;
	b=tkM4xS4ywxwLPxNMOHJ+EzruJY+iej1Ojokk8ZMzJV1EEMkv2Q5VC/n6lTBs6Fgts
	 p+lBUAoOp+X3NsQ+ncOhb5UcsUEWU5I7AF/XQbSUo5TqyUUPvbtf24He3wU9F7Bxnk
	 oTgKt+R8JlJmsh0kLUT4c1QrJSHRYU/Uud3dqXH0cBqgzO2gPyDNL+laaBVZPCej8n
	 YGdUOteoS7ChKXWYQlQ7A1/i/GBBynScfSIUWVPuzeHZhH42FBitxtN7ZN1WpFp/5e
	 Ujx5MVRN3b+XhmeTYC543ZfWMswDMTA1FcvK8xAhiDxRgkJJ2TQj1ww2RmpfZpl9ug
	 YecwNe5PJXkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43D7C001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 13:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169063872866.2885.2491821729087203704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816f89f7fa21724df3e1d54f4be3e2d4d27214f1a94bd498141fb1dafd2edc71
Date: Sat, 29 Jul 2023 13:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690638728
