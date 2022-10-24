Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0D16130
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64BC4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666641653;
	bh=5rwPV1m6h8LgkE9JimmSiTWx2/8bzrFg7G9OD4tWq9M=;
	h=To:Subject:From:Date:From;
	b=K/7OeZONCrVRmz+KnshahofvRr0qNJ7+9IdI0DPQnT6Zb+cPRGhuCci/Hyrsc7rsT
	 VBa5d0hKWr1hQcMUOTCQLIcPYgTEesyx4QF0GZGYomiBaWTVC6caDqvmHo48bdmr/C
	 HSKWpBlSzRbdDcx851XanZHdQtk5jk2/K3m04MwacQS5nx3Tz0unkutb003gNN/uv/
	 dLAlOw/CC+f4GtufKF3wmBASABdAw6T8scmOHA8Ug5yKb27eLxEopzhdOFOi/PcvOD
	 JiAA1z//vzzsINiIasY6XyJ/SihbcUNhIEBi7hlyaAlNCuUw8LFA4THz2qD9ZAQh9T
	 9Doh9KLaYrP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE02C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664165332.1086.14814713758817989988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6777ca82cbe4d727ad376ec3e95525b42117597492505af5d9220c56ed0137
Date: Mon, 24 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666641653
