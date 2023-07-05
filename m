Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD82D528
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EE5C433C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688570228;
	bh=c5g3gTm9h0DTvVGMC3PcjB2OzdCHcS0bD+De64e+nWA=;
	h=To:Subject:From:Date:From;
	b=ExxLdMM7DWa2PGf7EcpCxxBS4JI5hJdX6n5LDXnHpwF7kHnE61L52tk/CGOYTrYMf
	 LqCNKjKws4xddmjzcRDJwjQVG+YW3nrpvSrOPlcYkzU3ckzaqkJR4hKKvZWJgKKhsM
	 YiNT5khRgKJG7bAx3PUfqlMheEaf7LCgeo+IKxkQrSmcqY+Q3UfPPYp53Fvq4FOYYv
	 229IRAhW7WTwIeZ/k8o7L3YRnwQZN7p1DbwdcTng9I5rtotQsfRbhCFcXYT17yOh4F
	 V4jvk7rjm9KGQANoLPrqXceqDXxMB4TzKFg9vSBL/VGa5kbL0RHABy8aKB/68bKGJ+
	 9CJwOcukHG+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF29EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857022869.24226.7704049715713370020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89db4a52e0f9e31e74f7a0bee84fa6c576c423cb0b4535f50cdd4095eecd107
Date: Wed, 05 Jul 2023 15:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688570228
