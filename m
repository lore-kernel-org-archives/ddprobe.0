Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5FA2561
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66785C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663134053;
	bh=Lg2zUZ/dLF3iKdDItHvwVI4/Rhya0uyF9jUepLktnHU=;
	h=To:Subject:From:Date:From;
	b=jwiupPQ/h8DAR9X29LB+pU4VBAUTQH9cZ1vBsOY4SPgKeE8BDTlW0enLxjt6hwLCi
	 rttbq0kFqKqDatO29jpYEYrH7NytXjRpYExowVALGpQpxmkXcel0yOmbE4U8HuzRH6
	 CElESekUiyQSJmROsBlySeDaXf9REUIsvh+T4YXFJp5u6U++FcRPz5LZA4b/3NvF4v
	 xccpsOh2nlmXicg21vvBOYuUMJfKI3Mbd8wqLtWY1/gIsvpVr5DrPmcYWvOiJPTK/F
	 2aywIhzaIuOOuC7eiJ3TcmFLOSyR2mjLtjgMEzA8fbLVX2w4Y6ggipjkpJpxfEfLE1
	 i1YiFOlDmkJkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB37ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313405331.529.7312015849141468975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badf1ebc0d012f2098b4cbc5b47d8a421b76ecb7bfacf0b33791a85673dd01d0
Date: Wed, 14 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663134053
