Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3560256A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8678BC433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673201487;
	bh=b/S12EcW7iaILty/uQJuil/tUVEmLZ/ZcG3xwDIQQVQ=;
	h=To:Subject:From:Date:From;
	b=L+ziq09x/1ujFJW87TQyj0FAjrGYIRvWw453zBojKGgwUE9JkZJBPOiLErjDA5eGY
	 EBlPxZG8vKyv3VKlr9Mugb9b8PWgpPOeLUrzGDuaThZVF2zrrm7G+PoUhui4UFQZhx
	 2GjJuHSY5UKX7JSb7peoWXw+a59RsgB6HgvlQaLmLQaQhVSyQUp6gYKCWFnSY/Z8nd
	 GPGDnNDZl+vFugzaI3Ficx7lAkWy8pnVHmnHfjuRIelgDFas9jC6l586j+UMYmUUqc
	 6IiEoqkEeUdcFOGK9q/Cp4hBCIIGlUNSzvsQLTYPf0AfJ/ZUTj10pDpEf6PmEic8jf
	 k7NkANY5ECvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6827DC54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320148741.24838.8918619659474250926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d3820bb1f2523ce7dfeae2a8a8d6679cd2bdbc4dc79d1b93bca072ed2c9921
Date: Sun, 08 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673201487
