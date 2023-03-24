Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B811525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA04FC4339C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679655065;
	bh=B/fWIhkjXYwpQbQz2WcoFAsDsVexHTpq4YqwnlQOV38=;
	h=To:Subject:From:Date:From;
	b=QTnzrke3+VfIz5dpQbJ9/Aa+IsyOQwFgLqJAseO3DS++1+t2MKGsp+WrTln4hsVQb
	 x6Ae0+ARM7ZOVcUQD30JL6gfL/dEiJVNPo5vTGbUzUQnx84rZXg/HcPnxj65zrcvP1
	 AMq/f4IpgqTNaI2QUf4uYXVUCRFU2i85dxQh0TqacqE+nvEgKfLllkpQR32ms3/QTH
	 J5SlI4JFXuQdM8NmT9rRDxUoJIrwZssF84ywAFttKrFuDHXt0pa2L739kcpEwV0pN4
	 ugBx9pUaKHuUfb1oQIjvRVmvhWnrq3Mke2Br5hK+Puvitkb1LpJeJsPFSZ03yXTG4N
	 Yj0sFFBMiY5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18B0C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965506578.14065.8594403706875975567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212055a7c68f937038db52819fe5319690735590f4162240830966e0e450a991
Date: Fri, 24 Mar 2023 10:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679655065
