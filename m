Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E2315A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80650C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671760887;
	bh=YMYRHhB8rPa1w1rxSvxbQxKRXOCG/h/5b3QDVGVfdJc=;
	h=To:Subject:From:Date:From;
	b=r6nzDTFNJsL9jq6U2UOVFIrtQrXnZ5ub4lS+mESHsCqafMbzMPlkZfq2R3sMk6HJ1
	 DF1AOkyA9BVYUSFgH5Hk/MZbiYfBg/CEbTnYuNrOMkZL2uqkDJ5unm9UP9lxmt41Us
	 zywTtzp6GqsLymlZBR2r0yPHhjhdhTQc7bJgrjx4rEx5PfionHi/fS/YaTHwg9/Qsc
	 MJxIUI3Y0kNvuXAn7WvWZEfjYb+t5X0IwUrQrsvvrvxjhtSAq8MipkpNBmxNtzCt9n
	 EBFeR5VQBySVRFVo4DlpTboNhLbHxwCWLcPY14Vs4+Exw597qKiWHdpLhk4UOj2YVQ
	 ZVg+5SLqAXUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64829C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176088740.15708.6685456354649394829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb48cd7bb7936a3511029c7317a331ebef49aafe83b5b30c31bea60dcde77f21
Date: Fri, 23 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671760887
