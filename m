Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C916915B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9E0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670897487;
	bh=I7/+AqV/ZdFPjNB6RZI71yqfzEn3IGBWGntlV5j26fA=;
	h=To:Subject:From:Date:From;
	b=kNwE3Tw8zUifSjw1dIFX3Cl58jVW0MXUVJ2ZNHAI2wHYg2TBe/EaI6D+a8abVT+8S
	 ZNySLk9YA1DbQfd9+VxLkAYHl3jnDlFhth8oOvy0pMdfhb9mHEYYBf/OBvPa7e7ltL
	 b8Qen1rIDTLti8QxhOh+bHDCQXakpkUJWfqicfeLPlzANCtvXy7KJzgDC/j7Pkfvb9
	 WmqFe7gaWG1mXhhwQkH0WnVkEWKnlR2ODrOlvMvZ6TkykjO0hLAx+dxnU4n6kAZjjK
	 SJL+jwUaQnY3s6QgcS33ov2RXqoDAlWJ2IzAstGdjjUL0pqNjdGmkHKNZlCeEDRZq9
	 /SJ6onYBzvWTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64614C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089748739.10958.5044305868119604307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b193aab5b1313dcb74bfa357867915c53bb5d27385494255e6c722953d3a3c
Date: Tue, 13 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670897487
