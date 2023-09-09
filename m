Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E30930F92
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5805C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694239448;
	bh=o9WM/Ks+JgcCiD8exHrZtcv4u1AzQFCTJH/crGm1gdo=;
	h=To:Subject:From:Date:From;
	b=ck0M41yKrR++X+D33iB99+vAOdik5Z5yR1NeJ94x+9oec/b8wQR6B5OV93unSonbQ
	 QEKVkY58WmsW3EH+6wD7J5lqGwZ7sixAjPkRcbWesENMf4LFeQbf9K1oFmuyubHpVV
	 lCeBXaJ6R2zVcDLCYEd+zxf9WPd/rxjfjmNJvDZa94xoFoIglNohJ6BSNw8nris8sJ
	 vniIl/0YldPO9wm8cB+8VB2TSkXKBwddsHHpCtkAFnsJgKLQHI2FP4Fyy6gvY97uqJ
	 /EGLWRieQeIm5HtZanLjlRqAKUB9Z7+75tRbXrtoQhHjDgrSGyqsDHFHvlx+g6ypCO
	 yLiEkKxyh+mmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D2FEEB580
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169423944872.8790.2866240695772420781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3364b6b80b122f0b03cc17d50e94a6dd594d816e3a6d58b0bd919e3d40a18c1a
Date: Sat, 09 Sep 2023 06:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694239448
