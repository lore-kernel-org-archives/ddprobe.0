Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C77D51D
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F04C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667832054;
	bh=kJpwlwevxzmQ0YA/zWz2ETBIjk4ld87EPD9DGMxMMP0=;
	h=To:Subject:From:Date:From;
	b=hFnQWM7T+IC96bikPOiLhk84eae0kEEvEaOdHNqHZK2zDFWMMi3U1zw8yKx59AwMF
	 0Uvd0jt48h9E7UhmYCMJVHSy78Py1WnxtlWV/tL2Ow8oylKlTj2IehAULLYrKxybp+
	 0QL1ylCBFg6X8IIW0myrI8g0R2BOxy/PUf3Geupho8nGArR/pvUvdot2NCMxNLdKBg
	 uoH4S6FzvbTQIpb0D57F5DUAv36iUTciL5bdGtgB+dF2j44U8JWeMMhcBWPf4q8fUA
	 D6yKewl87OyY3JPftf0EgitvcXgHJTW5cLzoTGJwOVIA9TWz3Z8VCqFPcCYXVbkdB8
	 GIl77WnAAyY8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5477FC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783205433.19214.17221760911663517468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6fd3ddd02b1e7950fbb41ce16fd07519becd920a8fd2aaf3c22a7d55251bb2
Date: Mon, 07 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667832054
