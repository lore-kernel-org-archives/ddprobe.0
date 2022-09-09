Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F03622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D38C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662689453;
	bh=vLf2RAFvmy9MZIijV9/AQaLDMDkC3zMLvPZRux/MPm0=;
	h=To:Subject:From:Date:From;
	b=KPaQcdPzZSpfpqGYH3kh8h5iE6FPPxpy61o8r+95aYzGS3qRGHraa+7HcIwiGOO8o
	 dUbrHAxgtWdGMchIvkl+jvGj7OXiO6OC3FnWkY0XLa4XUO66qimTde+2Csa3uBxxAB
	 b8fTtssxtORRdFkScRlBHgkDnQaC/xVv8H9+SWZC1ZqUuc25hODV7f/EH2BlY84+ac
	 W+odRYQFUq87C4NPr85j8X9/tg4VjejvZ/CV0MhemQfh3QBvyDUO0jdMGcu6GvRZlY
	 PqUvFg8SJbqLy4ykfe0b+QtMEdxO8GH/oEWmXOWXhQMbu+tXVvAlwC4QLSlxbR9rw8
	 /ysLRXt5WXdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7D4ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268945336.2710.1060602611398655674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152cb4a65385b320600ac22fc267e877e8706faaa774163d86e91292979f04d4
Date: Fri, 09 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662689453
