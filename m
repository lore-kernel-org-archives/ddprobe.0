Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588A7B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 08:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8288C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675585565;
	bh=iruHdKLxgTYjL9hs80L5FLFpBkDOqwAl8e8V1dMi2DM=;
	h=To:Subject:From:Date:From;
	b=gXloY3544Bh3OjgVdmHUC7a1k7DExSd0W2nv0cg+uspDHsueTM12mCuUu4wCiq7Dh
	 vNEqxy37eeSog3QrG+IRpJaaiB/mxNqFj0MBSQNNOQ2XxoD7rfzOnDfRp+Yv2eRdHJ
	 hJMKSbuCBI4sWM5aLA1G+C9TQTyvU2HIQfo2d6G0TWkVtH8uW7NXGUZqybDhlbCPQ0
	 xIBJba+4ZOyiVCFTJUI/N4iUeB1evbd9zGXoSlh/LQdjQua2iqZ5WkGNJ8iJFbAfjr
	 DKhXWjakrI30J3rqZIVc0lfXP8eOcgM72x6onGuuxCPRqaOrqbrLXiwpNU3hPYfC9T
	 RVf/j1j/MCISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BD7C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 08:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167558556572.18557.8732061723667151786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a485ddf4a20f931aa6fe1b9965fd7193f947a9ab1875e9dd14e698ee18a985e
Date: Sun, 05 Feb 2023 08:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675585565
