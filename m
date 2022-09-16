Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC0A198
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E48C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663288253;
	bh=9ETdiXPUuD2iXL5AmwIMlHe7vf65bOMOk7hsgUjvg+w=;
	h=To:Subject:From:Date:From;
	b=IgoRksKPqwu/L3hiMzIJIo6hI4JyFCxQXIWJcy+DsQR+gK/46bDTLjq/ylcClCDCj
	 Vn5dhFPywc/hge2JY/nz+9o8qGjrNBrxs9RFyT1vBgBF4/cEbwTZMOr/h5hRvwT5lG
	 BN9C/LASMkR4HU0eCl29eicVerGSBy7CuPPcab+21RzlZSOhGcLkAmrGr6Y3MEMD0w
	 8FxhtiUauIwcSzrR8GqqcaSS0sflsR8mRUxL1zL2GXn15uWvP+EIZtJCOer2+/fQ0+
	 OPQcQISfufFLVeoBS/V35LKfmsC1nqTxqcTerdu1G/pRl0beQBGI1yrbSSoloGgnlF
	 QxRW3O0QU/BXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542F7C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328825333.17719.6696700811455036540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072d28d401da4c37b436485c5fae978ed74d9e09c12f396308bf243230eee52d
Date: Fri, 16 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663288253
