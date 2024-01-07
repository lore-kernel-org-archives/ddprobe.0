Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0474B1426D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuT8k+Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81388C433C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704667096;
	bh=P76KZY5eLfro6XsXFOG1swMtwLMpdW7BPgZFpdFkJ1k=;
	h=To:Subject:From:Date:From;
	b=KuT8k+WjFD1sfRd4Zzw2OoBdEFkewYCrHkEYBnZdSWMk3Fx5M7M9f6PQ2jCnX0iga
	 QARKP3UcIjQ1+2PXn6WHrQwPh36mZ/vesTS2tQBTGIkN9pLmhulKfFJl+AbTVNqo/l
	 0kfnhbwOdJYsLW56IgwTRUM/rpHSheOOt0PMNeAxQvxOjhYsGwdt4tVt/0IQf01PeQ
	 Ufd/6xc8ZAIMghScHiSQkyw0e04opnFDIovXaX4zfzhvRSjpuCjrzZX4RAr4TEA9Og
	 xGhEFB+KKkl7zMK2ew4Lm+616AuupJqTz4o1kkQG/XfGdEvingP+NeK0qw26liK+Dc
	 3O3pLMMp0Hy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63678C47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170466709638.24082.3889528006535492425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1310da8dcb2ff8bdbcea97a60bf865d72fd547ae63f852e5ca05c15cfd7f351
Date: Sun, 07 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704667096
