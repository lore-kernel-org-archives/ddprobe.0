Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EC21841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8EEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664511053;
	bh=EQws1mEIR2G4033lX6SLh87YeffyDbuI9W95shpgDzY=;
	h=To:Subject:From:Date:From;
	b=ISKEqzEhaK3PrXYozFcZBNs38JV3tjdXG1Ubl5hxSMI3SJjvFLmcIbuwfT/HoWgUQ
	 W2ipZgj4d8GDy5EgrSVgKBIjgkouHSQ33fezniwCKPs+0Xtl+FtE2+2yUhsMR/xsKz
	 altcHEwMXxg430sN/1hYSkLasKIfzx3jNw7+lQQlRZhB0wNd8xynME9GHo2Np3Xtqf
	 kWN94wjCyEkpLTrmG5cH5NEdZ4oSsVXP6uUkWbxBG3b+dzc8/0bgPmoShZN1FchWKv
	 s4RFdQfgm45J3O9+KHE3CesC1X5oMNS889xhyN6fzwjJoC8Ee7QXMuG9h4rIdEtIik
	 7aOSl4I62de/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D761C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451105335.4811.3454243047798699977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6711dd9bfb0c43dc006deaa6fd2c771627212bba26c47e1c2d3249a2ebeafd18
Date: Fri, 30 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664511053
