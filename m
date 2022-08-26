Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E1E3D96
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB29C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661524852;
	bh=My2CSrdF6ytjv/3y+8Tja6kKa5HWlTdh/5gwLnLW+J0=;
	h=To:Subject:From:Date:From;
	b=UaH9ZFK6fHSN7xYBzQ4q0y5WD3QqUkT4bVUvKOD7H9m/B/rkLvoTSIUED0snhypNs
	 FFukdMLt8dQZvy5fyUy4/Fv22MDoxyk0GgKKY0ooQpBN6Kh3UKnGhbRc1IT4W6TE3I
	 G+H6pZDy1Oj03wQG3vJ3sVzZrF7zY1pwxt+FyoezcJDu4/J1qFO02Ia6W/X7be3IUl
	 HY648vAKSojOX8XvPK0F6Iu6795dluBeGHOYMqYSxUzlVZ4MnpBnxfC8zFCZWnrzIR
	 /Ub/UMThLkjfFt9kqIhZv4mKmKSfGXrCmkRR8n/9ZcVCGEUl7z/pQ62vIsx7Ic+RNM
	 l3YAGvEIJL9Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAAAECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152485238.21225.9396020928020489778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b9ca8fd3cf6b219e0b5659bbbc30b83f84a332143b81ace90980f276dd70bb
Date: Fri, 26 Aug 2022 14:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661524852
