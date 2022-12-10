Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9317E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FEBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670639487;
	bh=goNFg1n/wbkRdrlIm6JQgT9Dci2mkBG5HW5ND3aFQFg=;
	h=To:Subject:From:Date:From;
	b=TwBZgOhd29sbZLOfXQbYOEVm2hQmYGpzLGFobItndT1/u8Kgv0NzcAcUBCdC3o5cV
	 evjq/LaEBOmE08HfTEIp/KRHtluJA5zD70sjCgcDcN0+/Q+rsN73oWlgoCX9tNBLZl
	 9pq7NzVl0akzXghz9gi82WXxCOo2X0wsQuoGiEQpkSXAibhJZzn+cON9mEmvUqsQqV
	 uXwoPhhPR0xXUQ2A7Hqr+5KKjlXM4ihmomA5e0NbGvTQ8zGThEmbJtvq6fDIz0N1+a
	 UWnv/ESu7xyWIrs7xTfUZbqvfQvWKND96AeBWWNS8iLyLr+3TvrzHNdQZBgNNWjCKK
	 UF4Fqjr2u1ppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661FCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063948738.23563.15348092325896264707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7a70a46fb81043c7ae8146c9a5dbf06cfdc17e3dcb015651339784f1b16672
Date: Sat, 10 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670639487
