Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCEB63CC
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8265C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681682825;
	bh=WGD3r9ASGX9Ll/kKA63qmx5H0DzNxkF/mvAIGR/27XA=;
	h=To:Subject:From:Date:From;
	b=AC2kZ14jKfPGBpJRpcLs3FsB2I6K9C1BufiaKyqiq/jwbTrrLwDI/Z3tItgf8KXJb
	 qXjr12WvbcPou/duYq3WrfN+xkM0tLzb69H98LRAQ3izrUTNPDcsW8qeofIpwL/VfI
	 ZI4Uv9UlXneZsVlZaTe8+PDFcFCaAlyn8T+A3dSaYM8lttisLuNEUrDfvx9JYc+Qyz
	 6RTE3hqz67+umgPiUik9OoEA+xPyulLoPxDZR8gkr9oiPQOaaKPaRdjpPeRXmMGYL7
	 HIewWKfFdAJ5lTfT57K6W6D568k6MRtxDq3/JJBUq8obtKEWCaGLVcbYHzwY/2zneu
	 vJIHHxXh7RPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC292C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168282578.7121.3097351606339425658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65079d7af6f4a03e074a92327f67e5a53322d01c1faf8931a7b17ce85db8c1a8
Date: Sun, 16 Apr 2023 22:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681682825
