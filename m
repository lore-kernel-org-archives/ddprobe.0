Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B2E28F2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4A6C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670851287;
	bh=tBuyC3Fiab4jG7iDdz9Ar9tYUlCqSlspf9O+DZqc3mg=;
	h=To:Subject:From:Date:From;
	b=jZqx9meHkC8ke8odlQBvjDeYCyFT/ktpv+FKcrbjxGUMjvCX4npPN7xSG8gpFFxWR
	 yH2E2fAKDLyuz0SFobyHBXaPASbK2JXvuFrtKkXxFl6bDU0KQW2y06IvkMMEvvOwkQ
	 CxMmqAgA1AD6tpOgt0PsuW1crJxQZW3EDq30U7bnvZEABB8/xhIohYlTatQ+NnbG8f
	 uCAxtiQ23PC6jyFeI2IGvXg82CRVmatfG7oKzrNt0fgpe+u///OUUUz748H8HLmp6g
	 xSU+9GiVJ28PanXmmPNF3U15P/lmg5ge+czI6ZQgscBXaktaeMf5pFVdRJLjk+0ztR
	 FVG1WqwqIAHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E0DC00145
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085128739.21858.2844967706126673287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bcb1fb056b0833d27f8cf90de1adf166a456c76a3364fe08c579173fba039b
Date: Mon, 12 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670851287
