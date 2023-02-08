Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB737B
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2014C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675818545;
	bh=Hx1RKaLE8D/cZIiK1J3TBF6hBXCb1vdKWdEZ4xCTGro=;
	h=To:Subject:From:Date:From;
	b=MGdJUH084JI1PLCzQpSL0S9TBHELfSbBIyXAOUmSXQczFrVmU57wmKPfSqlKmOqir
	 3O//UsTDmWAxn5WiGDrhgvAD2ZmzTxq2jMPDwaM+U6QKIgsNmwOw/n61cB620rhn78
	 hF6NJlQ9hkeQ5vwNLTOhECgoB2VhJPwerYnl8OeONuDk3x6qejr5Q0VtX1UGuNSnXZ
	 000ExqIfG825/yTG56u6XA6GUhpSgMZ+yIjZeDz9ml7giaTUxl7PKG4ROUGeDgLw24
	 yPSaG4nVjQrFSpz5csNYJ4NAtXKguFeSz3ywyiIoW3+yGg7v+4OX8Bunq8N4ircDWt
	 lGYNmoeN1Zw6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC824C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 01:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167581854574.15376.3244017783061412964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59cd8ae51662c98a1e6012cef6ffa1f5c5fcbe6830bd1d4f77a454331d36219
Date: Wed, 08 Feb 2023 01:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675818545
