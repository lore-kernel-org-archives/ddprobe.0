Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3D02C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E35EC433F0
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672098687;
	bh=yqPUTLy4n6CeskOLH44HyTHIApsgghaVOIEvsTxIU44=;
	h=To:Subject:From:Date:From;
	b=Z2yFpnbDY1bzt0SxwfKTbs20XBRWLsyzEfKFQevUy7DwiKSVMVdEQOsT325EttN1p
	 cJWathO1fQR0zbiNC1adHb8UzeDZU8M2ylV60rCxj2Oda5+vW9pct/St0ahwV1ixGE
	 Si1gfkaRjsOxI6KQGmLB/aqeAwpa8O5VljSkEjfT8E18XjWYGHcqR9iPzOP5yDlBY3
	 Ir6SGxvZwNVV0r/oPRaGBbi81ap5age9tASNTpfFu/5Bm61UnVlvlv3WQXLNrVgKHJ
	 zIzT970Z/FlkwUZEU9zRnlPFbDlu4IKKU8ihF/ygrlaAxZ9D4ZlIvPD8PRjfNh34W+
	 vLouM+HXh3aXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 719AEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167209868745.16577.14462878948541864731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8126fd460d314d2d34c507b2ccb578b92bc9b4b49b7b56cb0d1e1b50e0db9b8
Date: Mon, 26 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672098687
