Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E94B1848
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04989C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678602366;
	bh=RfmbfOOwiiSLjY0EGWRWyjbhNMNWrKCajjAZu7EuGao=;
	h=To:Subject:From:Date:From;
	b=dcCxDx0rBaOGlFG/77ytLQpn6xk8y3506cp2C3Y2VD48STq3EipnR9u3uSkB5l6vI
	 YplTGUSeq8ihXD+ybmj6Y3L+y7A3+mv+NadwYxjpyvWhsku3ioDvnjHcTVgImnmplw
	 aDmEshOU1xnoGZ8cwjjd9LZBWcmmm3/vjo7lSS4YqehEWC5V2zxAooU6xtGr57WecT
	 Q9Q0TPegLzYRQ1l0oZVnhOQid88TbonBc1Pwrcz04YLv77Ih1qnvM+DDMdrjn1oVkp
	 crm96xSi6QRz5HT6W2YgRiwC263X5DUTgCS9M+OdtX47AicdZSyGDX8CejsxcWoPMS
	 B7gfaMnziK/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDDCC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 06:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860236589.30679.1802013492678076181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51614ddaa64b4fd68f07070ac6024df282f609f5afa0897ae51aae58471e2c4b
Date: Sun, 12 Mar 2023 06:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678602365
