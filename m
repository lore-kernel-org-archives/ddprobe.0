Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B7828F3
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 15:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13AF2C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682955606;
	bh=rOY8kdGl+yWs43gi/mGBDgica5pjKKhsCDFyVc+g5SM=;
	h=To:Subject:From:Date:From;
	b=e1kUn/FNA6rLCK9oxTDg7twawX8hdTaMs3cSKGvUoIi/dSs1eBAn9V0MaqzmpM02e
	 hwstk9IpS1eQDnwx13gkR/lsL4Yxx0X347O3NIAFw9SLKNVTFCrfmeyYyhNsf5qx5h
	 XRGI5lcJPxXLegIHbKQRaXmcJyCfpYVNkDMhitVUBhuRyPpFvZZW0u2JaDPbFEuzbX
	 RxoWDa/zX6OLKn8fWWiBJGsocWQLc1X4t9mUCnWSLAmFcKGn5f5/9dtnzW2lPjRzzq
	 V6fHDiXqHvM4MRYrvgTfwnHauBxLzb0BP7T0mGi6ieuKo20sDLWBfLcVB0kJTtJKOY
	 doQLp0UtYHAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E04FBC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 15:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168295560590.14137.2620856448723388379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78803be634497329be05aaea5c3291fe4ac7f8466c9b80682d03c82e3bb2e784
Date: Mon, 01 May 2023 15:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682955605
