Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C1023B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5C1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672473687;
	bh=wMvxTS/lPHcQT71ofvWzu9HvhZoVGE7lZyMTEXKmIF8=;
	h=To:Subject:From:Date:From;
	b=RQgw2OUM0gHg2O4MHdXGEq6Ad42H2nFk/e4a/W+849yP2m6FLOlZQxhZ1sgs7jNRH
	 HJCaAcEG+3nytbjVMjiDrFl7jyrAAKHu5J9qgn+vQ4VOhvcpS1u6cuDPucqA6Eg8IE
	 p6VLvdFgOpUWIyALebJcg/fxyTBNZKc7FW25oQn6SQVZ71+xBRiIcPgWIBQCd9kEVO
	 jGGhnwELxZ8rJ42DxOy9EuOEQSd5EfrjQFGMKQ75++PpfdqdDNIOX5hjkP6jsRzy7e
	 LW/FdFy/+/7jbJap2yuf7mfKx0tp/i1sjzf3JzTO6o0rLEdAlc0EsF3zEvVtayq+wH
	 2dZJa3AsEOdLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EE6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247368740.13934.16749818344884095014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4f19979edce3fa50a6359e35171fd3bba6edf4cfd8cddb4084d0ee121d2c83
Date: Sat, 31 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672473687
