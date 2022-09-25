Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD9A19B
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3FDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664094653;
	bh=7ayOZcHA/iYh9EzpiUa/Ti0U31dIyruaOuSsiSn69Cs=;
	h=To:Subject:From:Date:From;
	b=W2fTDp0KFbcdRvzaSrpk3YMKS7qhXsmulaRHPtwv9zf+KY6r01zhU2FdBM10kGcFm
	 2m95cWRwAfvAb8hUdsXdwbCv76h9IwhnMsukDVh9+oZGZlRwhOzk9SoO8hXf8uRSmO
	 3GNiy4e2lN+oegqP5p5kfgPxJk648HjSrCg5g9sJj8kgt8cyQsfnUrzIi/cZpvxkIk
	 qbhV3HEanbznZF+DHK7omearOSnjZIEi1hq1xowQaxzT29mRwEloVdAxnWQwJGckOY
	 HsNuEMLd0d0Fxp6FIB+7ue7b0Dpr50XrhVajzGx56HII0Kp2Fo1hned+yxeN8U9z+K
	 rDYphDEQRxJTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608C5C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166409465338.9338.2040813705244065656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a546960c52b302add2824023672cc4656dedc8fa1a18c80e72a3f4fa737e78
Date: Sun, 25 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664094653
