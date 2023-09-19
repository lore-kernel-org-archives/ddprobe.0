Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422584C9C
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE859C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695128108;
	bh=CxZqP9WVo1Ioys35hUPnlda0yME/PuqUrC864EIGgtY=;
	h=To:Subject:From:Date:From;
	b=lIuwpv9gCJg5xsTJycGRxGEdRs4n4Is4aFUWysewf18gCbCjDtjROwJajMX+e/zHQ
	 3qsw9JXJRcEZKOIMHLfeRaYksNnE672/xmRwwJRSud9k+G3LDojT4dNmra9lgRmePK
	 iePCV10PZhs356jGYBtL6HTr1O2cBP6B3CthVlXMT/+1/D49/HqvWZLoPebbuKQ9ev
	 KclDUh7O4KMd6xgpRVUh4/xzUNRXg53vkuT5tfIuhNBtHqlhari9LtOUnehg39DNzp
	 AwKKunjRPJIAe8BeMfH4skh2LPjIMtBximAgbU4VxgaKGIWSDZLoDWK9N3U7Q62GCb
	 SrGgWqWcop1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6765CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512810867.16325.8358455717644003528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00437f68e6b16b2e33f96d0607be0bd78673f85695c498ecd487d265aa988bc
Date: Tue, 19 Sep 2023 12:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695128108
