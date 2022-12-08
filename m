Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1218657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E40C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670482854;
	bh=Mdt1OMZl9Ipmgm1KalmQ65cpW82PGErGrn6W2uMPJdE=;
	h=To:Subject:From:Date:From;
	b=F7OiKiWyoGzW0ZYlIGQ4qvGiBtMV28ETfyW/npDE0qTauOI1DnWclQ999pHdYAGHN
	 G8ZBr8Q+HBEbHSYPFstnmF98XtYXVl9QDP1T6jevufGXNLb7ZEG/NHueyulLUxVwgz
	 3sgIZrWrL2O8fi81JSVPr3YEcdPYdlQPht123JA+OCw1GbYyCC01hVl94pJpiJJeYh
	 XiQgbOWAKAqapsDQD9AytfgtRrsEW5gxZHUXHIDLWvd8DGG41jpsjIebh7cnI8VA0f
	 nqQa0Mzre6sIMDM8goda2P0opyQhiNICvSBz8sGRBtxjNFroWKM2WOssi0OguaA9BD
	 6wYjGgenSgkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D47C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048285433.31432.10914431674156536557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff75a7d20076bb93485c9ca4abaa2c59ba5bab122fb7d50178eb41aedb02fdb1
Date: Thu, 08 Dec 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670482854
