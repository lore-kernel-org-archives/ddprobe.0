Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301FE7474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E5C4339B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674253325;
	bh=2uU0z9WANAyYzUe5Cekn/sVqFf620upjPCIPtz/mA9w=;
	h=To:Subject:From:Date:From;
	b=cG6cwlYGizBScqMXm3uLfAzJ+eQ7aCEqq/rohXGooiN46sOum+zZ2gqFrlbmWX0CF
	 1g4R2/mysoZ0DvbDiquiw9AOY6ilWVW0xAZV8s0lwPws6KdYLe2/456Udyqc2M17vd
	 VLKv8dWR6lNbaJY3MhPc+7PMU34HzysYpyb/kiUU1yZwzbG12/tPGw0WzJf3ETbLiK
	 2LVe9NH0ML4i+3aj0ruhHf02rjAn/B978opRgfORrHzK+Liqfrs2FcM1YchwMqq8Ch
	 WmiVwIqt0nn/c10TtONKvF5GaTlOEnfFlgQ5mDwaVN/YI9J++WxtO9Bl9tF4AsPX5G
	 NV8W6CDFHO8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C07C27C76
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425332572.31700.2196772337752842664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201b8610da9694b95952053f615916590741c8a9a0b3f98228b1df240569d6e0
Date: Fri, 20 Jan 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674253325
