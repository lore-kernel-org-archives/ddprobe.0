Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CA37E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77143C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664328653;
	bh=orhc1aD6MipBWu5wtrfM63JBNxveGzVFjE2NbCRa3n0=;
	h=To:Subject:From:Date:From;
	b=eTvvklrg06ZQH/qRZhyr8FwQxUTvWJBZCt2d+i/EPXKTR0xlxr7m0XvqmBDG7bpNO
	 rxvYd7K0UGzF816ExnnAmHkAF3bTKOn5vNPPmaxxc9gdzhxbJZIYHzgHBnPpmqXtYZ
	 emncu/nhOGHlCJu4Yf7QWeJ4LMmIphOUyHd+sn08y6+pxW1dRqYJTDo0FMztIWGXeN
	 M+iJdFHdsaj4okiw2jOkoY718teZZoyZdzKP7ja6NwP4MpTx34RN1DDmh7PdawvpPm
	 oJhb/R1CbqyrEObZSFcTyDuVGh+DxZHylUrdPkPx/Uw6XoJu9HMVjOzNYLcalh18Jv
	 QbHquN2rHPV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56495C07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432865334.22506.861158414992812629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84afba4325cdd1b4fb74c05404046128b442a3a620744b6557126cdd763ba67d
Date: Wed, 28 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664328653
