Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751FC631
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D17C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689817928;
	bh=DyP7VcJLw4qcC4UxsAK/hgIg9iAHhsWuNlEEhw/wKnI=;
	h=To:Subject:From:Date:From;
	b=TksNOLMyOZx2o6iddXs+Fl9mChUahUkO+TYz7HvA41WIlgGm96147Tby5/x5B3v6W
	 9AuPQpRWPTYRPF+JG2pderRaUrrbYypZ4O9xeSlWzm6Bml+hlTm88tkx+stA6KHpq+
	 l1fM1fIYqw3XCQmi6OwVdl6ruBv79ZjZ1W3bWdM80bxsHERmH1c82JfCtOqJ3Y7mAO
	 Szm8sgECa4VH+FTwrzYSK3l0FM5WIQWcN+c+5cjXHVQMXaaabA2Bf++A6HQvB4U5qQ
	 e321Or/1xqjnOOO19q95sBBLjYvQMNvKMKyRVHv3y6OyuCl1DXV2k0+hmEQ1Yy+Hef
	 haY4dwxsKn0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD84C001B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981792871.31385.12223941177323811033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b81cabdc4863053ff0ae240891db6fbb3dd0b65fe7eb09cd0ff65f7a05721bb
Date: Thu, 20 Jul 2023 01:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689817928
