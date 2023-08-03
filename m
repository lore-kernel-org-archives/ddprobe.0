Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074971F927
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF6DC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691029928;
	bh=cFFfIhanLNfyxCCUFHg00vCfc66fJAdyVM5xmUzaBH0=;
	h=To:Subject:From:Date:From;
	b=pfkPjCr0n8AK/8exOpAOz60Pq7zeCVmrpFHzLyN3cYC9Sg+He04vJXDzQY+xXTocY
	 uGgQkJ36NSafsBXWW5cx1kJ2H4TbtTQv1MVT06WfcnULKib5KtEIlAE2K+AG6tHCDo
	 x1+bOIeQWe1j63p4qIAWo1Q8fvwCU8uQhWk8XmgKgny1hpTgpU0OYiS4DGzIqXwjoC
	 OfOFgcB/A02fNuNpxJyuSdVre18ALAdqy5gfK9ue7V7IzDDINzM9ZtKi7b3dWnRapm
	 74YwWY4TJ50yytGeylfxxuBws1UAyM+/a5sOBsbT1dx9DoLBJzae2SZrVMKd+VycJc
	 ue2zGX+N7wGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4084C001DE
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169102992872.26562.5200091432129291267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5d0ce422295736516abe92d8bffcbd360b2d4706b4fd94907d9fff753719ee
Date: Thu, 03 Aug 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691029928
