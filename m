Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3027D6D1B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5988C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681688825;
	bh=3kQsSDgG9d7Iv78vpnqksMxkGKY3yAKOh56xKFBv4Ao=;
	h=To:Subject:From:Date:From;
	b=GdnQ6RKO+szSDl3Q1VJWk75S+D2ke+QkgJyv1bkIKrv8VORcFGhxa64cWHMY0YXBo
	 2UD/duwPsSTU7WQf0ephbpGTurHwbGZ7KFzAlTklZ6zvPSYWkuWX6jJ6l3gWfT5zN5
	 l50tZWV1eovPg7Bay/cz5gQv+i1u3QwGbY3coqGfXJv8TXr7MPPue8PENZLdiDCYmW
	 +HqE8B8CKuPZqS/t/qRz+kcLmANX5gqnLV+K7TpNnckfjhpYOhO7Y4sVp6rgnLaVYF
	 Z2b4RRBRjAZE+i7y9LbV8SxoqXihqjkfr4zBhowFBZ45gwTpCExAj3Dc2qFA2rjiIG
	 6vYj6nGbtbxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAD6C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168882573.28699.325778063361649994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12f69089df9e1bf5421aba943715226af2e0d6da828bb62e66ed6f60323c4ec
Date: Sun, 16 Apr 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681688825
