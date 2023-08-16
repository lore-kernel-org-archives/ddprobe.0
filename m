Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562783D92
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59A4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692159788;
	bh=l40cc11XJqD5TYv7ZyreardbDgM2R03pMzY05C46DBw=;
	h=To:Subject:From:Date:From;
	b=c0c8KZqz+GOADxmeWpvb+0ACnlMAfOV9f7iMhjBrmzfGfRfM9Um75FE1Q7t+fimM7
	 eCZXKZ9JZjbwRl2+Nyf/srzrANaKyL4Yg5Ip6wrwf99vvv8wC0ehCwk37DE007Ps8+
	 PcQhALa/WPgYC/fXWxSDcFwLBSwKQ6dNrlA7G+7i4rYxl6A6RglPn/S9Lkl/7xkadY
	 dMSyQt/5fjmzcHR/KLXuE8EdMErFE2eEjn4UtKQBnYFgT/3ot2OS1KWek4rfAjz9Hn
	 u3XmtpF/RDGm/n47saAfOT8xwy5kSfBFKOhMyMWEGpHPfZZWgjPhNsEsEWfzThO4aP
	 vQA1zeyebVS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C6EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169215978868.8037.2300808035180400145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8ed73d63db2a1a4cadad68ccf00fd2b8e82a195096e811bd7632eba8aa7fdf
Date: Wed, 16 Aug 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692159788
