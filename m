Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913933212
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C5C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693868648;
	bh=4GoYFoOrvOJ1+c4d3oy/yCXfFvJ99RTyIxaHJ04/Z3k=;
	h=To:Subject:From:Date:From;
	b=kYS5v3jZlb6W3J5SLohbpmrqRfT2Ce4RK0JBWSJboJZ0djD98BvVG12G75iD9pwlh
	 PuyLt6vN6EcZ7cSnG60BOEBQpVBIkzGtCB0zTrlfHrhC29we6vlgcSCcZLvWQfBNas
	 SGoQzRJYaTC34WsU3A5t37lZWjOELQZUGWcfD8sFtsYpReMfESCnWK5BKznpR3A7jJ
	 5Wz835kvqlvlBRuWNca1uafQudYx3Nl53wnGPZ15EKTqooUvhjFfW0SG8GCDWhqu47
	 X4k7KNM3SCuZ3n1Q9aGepcmpKHLdZmfZmnN3xhzRREyaQbjqKXPFJ1msZ4haLZhxda
	 HNlbDu68mmw5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F74C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169386864871.25759.9675093071981172329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6288f732fbbc30c5c9debeaee4e885577025f11271f7443995d9cf01df058b2c
Date: Mon, 04 Sep 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693868648
