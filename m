Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16DB33ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC4AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668776454;
	bh=KnWC2thXgu//Bz7rnpvCqs6BWbPqxvM7A+ffcvw2Eug=;
	h=To:Subject:From:Date:From;
	b=HT9vq9PbVWrBrVMHxu0ypCPRlOfplriDvCIO9mPKePQ5hqhYyZBpHzZ5cc9T9wGxo
	 73zj8TOVI0dAHWmFYcrqfeTjL/gLYWraRMLt5IawFNJH4NFk4OCchgIwy1PUlo5vxF
	 j9ogokQXRe8s5gqUpZPNvM20vZtB2wJq9qc/5WaQYM+T0r9EjyoHuE17fKygS/ZOEr
	 lHURUj/doH6NQJVs+G4Mk5JxrsfWMWzRRWnzhrvKBr6lhHvNJ31UGZkeZH5L/qyCyK
	 Dwp0QcNZk+pSHv/1yB29CIQrYW149UssRUww3SEzNCTxISFFVplplB3IcYHJ9GgJpr
	 VjfmWT4BOBuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAFCC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877645437.10213.15882123220770308955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a16c658b121cf5bdab4f3c94422ccd4edf7c3b944e657e0247d69a1b8e136f
Date: Fri, 18 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668776454
