Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426603C02
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 11:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09CAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 11:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678878605;
	bh=T6ml/0fdOiJQaI9bXvCJ/+Awxc6Z2yhbQVHmngtLHVg=;
	h=To:Subject:From:Date:From;
	b=kUaoRQKk6Q0TAYFzsY6dv8ObJGqVSa+t2POEF9c7JtUuCKhqL/1uM6ueEuImxrWcQ
	 WHwSo7/jejdqh+Bgs12Yd8BiEBueWkeUgHnh5UxRbjBQlpL3A8NTDH813VSyXefJyo
	 gTFZX9CZYGld2W4D/zCgN3Ap+QjvtIPacHBWjwyoFb6jhRuzFyNNNieshB+ugMr3db
	 5z3ShXpWHd4j8SJ3Zv+N+WzYKD7elfzIPob6JyS1SaeV+2dMwRbiP0obmHPrEIlPzr
	 Cr7wovnFKYKwrOMT7bppeISzaANDB+oE+fze3kO/5L/3md6WCXpNaUVTOapk8tv/8q
	 PZ1zwn2AnC+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33C7C7619A
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 11:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167887860579.6088.10438360060054499171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98971361751344a577ca22f8f10fe3d0663b51e2a59e5766c8bb3df04213add9
Date: Wed, 15 Mar 2023 11:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678878605
