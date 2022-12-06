Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4391844
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CB4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670299254;
	bh=4emJIcB/EXc+JGTbLVbuRN3wuPxvAE4+kkD57sDbIn8=;
	h=To:Subject:From:Date:From;
	b=DJz/k2X0xsQHRT1nCiBChKnFAu7attIwXtwEsOKEYdta5+3kv4v4/1sKy5k9w5sBe
	 HeFvY9QdwrV1tpPQ2b8dz8LyJy9Cwp8kA0bOU5JPbmuVCJNtvvRi+744MoVmZ5UCQE
	 wQiOukrQ5w4PjdkjRUiWMiwvnVa3wP/QrAigUgYhxBbilwxOfpFQooGDPB9VdhN8LS
	 FEBVndZx7VQJE9qY3jBeDHwkyEDc9kaCqyX7JpibxpyJUzkdRwPIUKPbk92f4f96wa
	 bbi4Y0Uy0OFkdN0oXgR9R/KuOzn4/iNPfdhaCNA1LnAA1NUXqoGjjMMWy/WG44tWoa
	 dHYm8Rzo56BYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A04C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029925434.11515.8763247181465357941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17455cc76f66cf541e3ff46d661506f94c0c6597389f98ac24632bdeef5f175
Date: Tue, 06 Dec 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670299254
