Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF75E1854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAD0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670806887;
	bh=ln1F8Ld2eCW+ydNJyd9A/PkxHPTkxGvdDjOGw+JCfIM=;
	h=To:Subject:From:Date:From;
	b=OeHruDJnI33aJ9J4GoNB8ZeDSvE6FyW5fIMJ6zsPkeA0ESUhuK6k+LvJj2cFQiLKL
	 FGwrZxoaTRPuX6b29yPobr+X1zpx+Gj5/QGqL8j1FNbg/0VLIpFeV8igWbMdivtscR
	 M5Mr83LeKYREpsT9B+rvjPi7sW68JI+dYTElLECD/LSQ86LRIHVg6sXDZ+LMDccZjw
	 RckoDkGgzYph9Pl5iKhEziz7bmHFlq1xOu58+Z5t6jjLNNs/kodxpsnyE1eiZIgDC4
	 EFgH2ZNK1ugXDitN39qZri0FuddmBWI/D0Jf1thM3xSdDHr8bBmpNl5tuDpiFFhTEX
	 a8QeqXe1AT2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6D8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080688737.9648.7086449056563531344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c267371521507593c42bf516e67e2c936db649bcf0303e1200613efca7533f8
Date: Mon, 12 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670806887
