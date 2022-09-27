Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B845365E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5C0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664268053;
	bh=LiQq8KNEQXj1xpwENQG8qdhcEfollTUThHwh/jZRs8E=;
	h=To:Subject:From:Date:From;
	b=AslVaLoCIBxgYQcTxX0YOus2BmA0h/nuHRpId+l+tDNGjVAmwB1e3iykjDFkeT4EZ
	 So1kcbm03uyVl5chWsCgeox7nFgcHDsJyr399jNFu8SDdyNodJ1UXqAMOChdmMyKJD
	 vrZFjnt7qgQwN29OHVSL14fEqP9SluT9C6DRr9gOXF1Yx9+rCCi+HMrVda+GQypaVx
	 08oWxCW1hxw3d2J/Jn9ieT22aCn2sDVkZLHXqUyuviZsffvgK7Bq5gJtni0y7rBblo
	 JNM6PPRaZc9n7TVYASVPYsxKr+7qToYx9A64/NvB/wHP6rcFuJ0AI5KmJop3oaNCy2
	 09oHgxIbTiQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541ECC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426805333.24608.1697142024891336606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a26116bb4511e21eb66d431bb3ff38db8f4764988f4c4f2ffac95f4c9d3b48
Date: Tue, 27 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664268053
