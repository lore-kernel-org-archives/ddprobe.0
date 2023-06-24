Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C2E46B0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE110C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687630389;
	bh=GSyTuFN2zCopS7UIOZhpzJGlExDFjScPOtT/E2BNjv4=;
	h=To:Subject:From:Date:From;
	b=QIP5fJfCRMzDV/D1zgjxjF6qwkciggNLUWmAaU0c+EQ0D/DX+Ig3rBX+Y3uuK+BTU
	 NlxVNCjPhlU+3yWJmpZOpbRcUP1cHhpVUVFDIxecPqwU1NvC32yXlA69+jeN7WK7c1
	 fPoFsGUlw5zH+ma9qmHi8Yf8nz7VfnyipCXW2J4aItXEVHXUl0gve4Um/Sr3oz7Gc/
	 SvUj6G1FfDOXHtBC0GJOjFfEaeSsjXvRGC1pULbq/KozIdAZSSFhI3DKl75uxBHXNO
	 m51OsUybp69oEItSJuUZNyVUJZzD8B/Ogl1TmMt8/ocIaEKhgZ0EBwRMOtch+JAECL
	 9uAGPQxxm+/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF96EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763038883.8441.14356506399234986573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dce442c55603d5bd26ddbf72e0d22c0e36fb73a3cb0563d5b77dfa25cf9aafa
Date: Sat, 24 Jun 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687630388
