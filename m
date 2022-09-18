Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC26780C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DC6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663506053;
	bh=D/KyvZkhF7H2VFgcLwcLlu9vV+b9104Dp4htDVXFyAQ=;
	h=To:Subject:From:Date:From;
	b=LTMVRc4Th+YVA5Nj72sCYEiicyxSlaGdXP95po8AG+LeSg7cGlUrBphW6NIa4/vGw
	 2jEH1kbDbONZC9pyDxnewy5qaiiCJ7GR70d9fs5f2opJuq/7nbMCle85CAt8mBrB1k
	 5g148vBKB17YjC6xQ0RzvIfp3o1rA5NvUwwG10f7avoPV9hHoxNysSqpZUtKi1xNvo
	 j8GYiLhxC7OAtQXI1Pp0kbq3enW4dU1810GPqpflgpIgrdo3eJDUpy3P6l6zHd/cMX
	 dGvnb+MocMGtrV3xwQpZZTr7tRWlgFc32feTTMQP/ADm+KacekkYSyvBlOxRMtwKRK
	 gS82q+cZ+xZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CB4C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350605336.28483.509501846199800564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65184fe344ec40ecb87c831d5c9d9b92ed23154e905bfac54886751b2d84d2fd
Date: Sun, 18 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663506053
