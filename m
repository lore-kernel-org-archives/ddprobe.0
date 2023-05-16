Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BBE1FB0
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBE4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684201865;
	bh=7LseFetZEhJ5Qs0zY2MVDRCZQZtRPyeV12HnL/9Z3KQ=;
	h=To:Subject:From:Date:From;
	b=lL7aGsuwkJdl9CNdCTML7gSuBw9GP/eYgBQc9PSYJcctybgya+V6o7dpzOPJJxpoA
	 0/uvnDz+5zyJzx9se0FH6xtdizhLmeIkDJb0y83rbMH8HC8ikY/3FWYtr+lcxNbV2g
	 3QEhFnLEu8JF/W8MZsquc7LhoMYhVHpn2MBmYj7WSg4ZdeVWG37bQlbwQkNV9CBI/T
	 i5CgujXMZvUVAMVQSxQ6qyqvhlBPy96DGJ2460EpXMnAwrbVXInrgXkaBYmMFrO31O
	 tsrq9j3ib6490xDIfwOmpZzPKVvPLJIGnANLWmXXvyTmTu5aOHMjSf7C/XBQ1nei95
	 Sc1BdQKkrxY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65B9C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420186579.5842.10471282215794842370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff36517cd6ed6f0fde2ded638cfca6c77f3519cf0b44588737e3a45cb0e7804
Date: Tue, 16 May 2023 01:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684201865
