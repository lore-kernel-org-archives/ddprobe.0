Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09EA2CA4
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78352C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669374054;
	bh=PfE31Qo5D8z/GB7IY9yPnpryPUXSY1JOq9CmMqwI85Y=;
	h=To:Subject:From:Date:From;
	b=r0FtMM65X6We5Zqlo0VSOCv6DIApP7Sw/Kgx7bDkvvOPGWIWSTtGZW4rT4PjgT1QB
	 COlyFQJI7jAG2n6lIuzXPcsx43+k45VHpTMNOyrl9ieyjextQE0nrL/XLgNptwSbx9
	 Rvrd7s+cblUF1KuejjJWbNYNV8E4tcTAWziokKCi8tVJnI1aVe1CrjIXQKuYQsM0Fm
	 BJLTstrQPZBmVcnAxvLj5rzbwg9a+4y38OTkGKuNIYrI2Nc4p8xP5AgxdS4v+dmO2Q
	 tNMV2HV3Lq6g2r37P7I7XSm0r2pCiGAmVxtDv26VEZHzhbm05ut6t+UXa1qr4UDlU7
	 VUPyTs3YBGWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2CFC4167B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937405436.32722.14321799285348082188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51c274d37bb499f83782954bbf79b6b7768b5741df5a6dfc606977d03c98b57
Date: Fri, 25 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669374054
