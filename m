Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D8C7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C601C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664332253;
	bh=KL67I1FsSmBn7oJmEHA3eYoTaLrX4Wj2YCvxKR0Ku1g=;
	h=To:Subject:From:Date:From;
	b=DObKcFHoXd6pSllzY/dQUhTVzzcjuQOWza0bvrSWwmWDfhcjIrQcOT8kHI6r4Rsdq
	 We1j5Y1ttWlFozBU6t4KnbuIYtvjb7yxLnW3kXG+a80jTuzcN6e0HPqbefFG5IvGih
	 mWrLdUn+QT36RGB6sut2I+awzY/CL2avtg+80HpolAkGjSSFBJ6Y9rpa6ZviUmUo6B
	 7P1aAH0yEWtnQ82f1/IALdexcfVS7GdJiXLBsqHjIhEWLEiQ542uUlVOeGGRgU5+jF
	 uQuTGqxekQZDo26BLnqXpUXpcS3J64Eqpbs9WKRoPHqhpJyILhlnEgfJdOV2X2eeeN
	 FXuAgBxqdBJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D0EC07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433225332.14976.10479401692156115444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d09689e74369ffe0e9d1df23c0a9515177fda2f8a4cb38e311b78c26e983a45
Date: Wed, 28 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664332253
