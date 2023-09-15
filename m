Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7528E10959
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A60C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694801708;
	bh=7LOgIbzFT0j+bz++6albJ5PR6z++NahrAFr7lHh6Wzs=;
	h=To:Subject:From:Date:From;
	b=G4bNA4jXJUqohjk7ZGA8xr3TgIBBJTJtkJC18dAgINrCOLX+KppOcwOCkatcPQv98
	 Wa3QqvEVAs0Lcl2A6YTnOdJmTopvoZcBxj7q6EeSN7FX5zIIpWYidC5WbTDm1Y6+p3
	 7LzbKdft6kS1pJrgSWTdqlgyB1YcJ6HHlwo0t6ft3y85TP3bsZYPC86a8nFyrpfsIC
	 3ZBL5uSviv8YpVR3YlU8ClIhMlEwrSuplnYO5VeuZGzQd/QgwUQcmxGD2vzg0SfYzQ
	 d0o5DAo6Xw/B+8QzcVaoO1ZTbUSGtqnAnscbsLrRHVgHORgyrFBXXW+5GospvkTB05
	 9BUyEX0vwnfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37E7EED61E
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169480170870.5012.13080213934407462046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154e34d530b3d0a445d8003c5aef8c22ce55fb7fce053d3f1f7c6a5f510d05df
Date: Fri, 15 Sep 2023 18:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694801708
