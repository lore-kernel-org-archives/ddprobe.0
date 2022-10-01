Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68AB1FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBE6C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664601653;
	bh=DqOtzx+ppHjfxv2Q1Fg7BczmdeTv7hhiuu6OheiyERI=;
	h=To:Subject:From:Date:From;
	b=GF54h/qf53AP0S7ra1wOl3GoBT1Q/pEUWCgUYM6fBCYHIIGZUhkcbVdP4Qea9c4P7
	 LfVl1gbD8MRGCXawaI+7Ccn41oJ2u5dYGDq9ndqreKdWqNd1qer/0cVBJ+9RCafUX0
	 iH2UFT9CIRRHHCV4DPTHL/MECKB5bTpYqWzz4tjIQFpKMovWNh9lCICNI9xumKrBOa
	 Cm5uiAZzOWFq0PmXKmvXKtkskOAZ5gcUXJONVTuFoV/A4bS47Cwwrht1IeW7xiqymK
	 KjlQ1Uv7BdjkOufxUC/ftxdukZyTvVWf7wwB7IkE5E2QPg0N4kUgT5xT0PlKBvRA01
	 vWHmar8zS44PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54524C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460165332.2079.17813103952484021131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd2496f6904a18b277341b35bd6ab18d0ed8cd83ca5eb86f3f13c2ec53b3950
Date: Sat, 01 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664601653
