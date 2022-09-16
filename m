Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C082F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC62C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663359053;
	bh=mguiCZjswPzMctAirRw6oOEr5CS+Ywue+jnLwSNLnos=;
	h=To:Subject:From:Date:From;
	b=HC8GviGj9e4E840phnoNDM5r18J8DwG/zXh6Ij6cmXvnQ7AmspvJykwlweHgdSq8C
	 Ay/7SBumDCYptljVfgsT+KkNscpJScEEIOVk6tS8Z+ryxdsCRt+QdXKX7ombn49ye1
	 nRuO0siTShkzhbqSKIjILPib7AEiP8kvQFp9IfvjBM4kWFgGFyUiS/Ypob3+aLZDaa
	 uz254mhsnSA913TeVgPWnwt1UCYeHclkxLK6HDsnXJnhb1nLcr7Nv3LM/rY4xGhm+n
	 fxO/RVjtOyHusVQqudlz6dniRJiAv+Qhikp2XN2a6QYe7mkKCRsrZiSANl3g09TyqJ
	 12iB1XFsjtyCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AF9ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335905338.13636.8930682373777473116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a83e54764ee1390d310b117f9c6116f93b74a7e878a4b85674207d27104f66
Date: Fri, 16 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663359053
