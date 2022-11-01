Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BA57E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE7EC433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667328654;
	bh=UMFxfKugF3DsjkKaeDIN+XpqDnzkMW2/1M+aZcSYWgQ=;
	h=To:Subject:From:Date:From;
	b=ZdP3ON3Gu451Z/2MHU8aioeFmQNnNuYPTLZyoUccML0a6DuqAzlsrCW4Z3+RsLziw
	 CsUYwL46JoFD7JSnDHO5AAcw+m4qWbrNVzRYanM++NCaEjjhT9XnSiXqJW8rrtGsrH
	 OIhplZ/bY/GiougutvNiw7Hz4xg0bVDzYgmiOwKFMXmbuLz/QJpDRcZWT11+KeMIrw
	 Z49u8IK6i+Wp9e/v8kCB+Moolrd9BhSc6bIXXIM2Z2e9emofMAiAKRdQP4TJAc4+8c
	 1cA4ABjdcELuOjQp25R6onH8bMyKUPh8cD1mF3AihvuR5kbchgu9FeslQ9sr4+Q8gP
	 D7Rpq3K5FH07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB19C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732865431.31113.9262151433012530341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e8a187a435678ebf5997c6663a7738d33c0bcbb73ae881860300944e42eb2c
Date: Tue, 01 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667328654
