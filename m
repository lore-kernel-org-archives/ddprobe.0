Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B371C4A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAB8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663588253;
	bh=AuyTyhx/KXCTZZDxXeGFkAnyzsW3f/NOd+pNwGNcgQ0=;
	h=To:Subject:From:Date:From;
	b=ZMFbojUDT+AJACQnzhcy/3tm+t2+I7PyUnwSrwdheqnSzL/Cvn7tqWTt6liZpQFUq
	 TlZAi2n0t/H/F4qkhT86JzmI9x3Um76BiW4P8F9C+/dCaRroR3S3cUpX9rF7eOJmPR
	 JKCfKOtJrTjg6PH26U0B5As054ISANIatnpFQi2I0ov/Jc/GDJyoCs4IFTBTv0TEJh
	 REAG+cLSpQ9Qk0QvKRCO6qCnZGNwP4l7zBNubeBsKUsjQl1nfOqIMsszhl26yFJcvg
	 bcbdtD4G2e35mLh4NzsSZHqZChh/j9GoFH9WEr/KJHScqdd4tmeTFhxXVKFztIW9m/
	 Q7JZ/rXIoBa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDE6ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358825332.20613.6084851618697975631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd508fe1a315bb3c178327e379681a98705eb4c60b781862d902a767dca2799
Date: Mon, 19 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663588253
