Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37107B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E58CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672882887;
	bh=0d9nakn+PZe+SXoJ0wigBLJutXsMXceSMRkd3mUcbJw=;
	h=To:Subject:From:Date:From;
	b=UP13K1PgMaDPI7efaQJypZMVDmL58nKwyMVwUnP35172pKD2pwNG6/aYu3lkM5dOz
	 PIhIYqIDYFNkr00/Qc2tYUv3W0QYbblxff3775aqQnoPjzRPZH/um8oukUnfuf97AD
	 +R+w+gBDBtZyjxdHutrMdWuNpQgW/K1fOu9kklwH9+bxAWHyzOT+Z9Qm4xkcxcO6Lp
	 yViBAoGKzh2wZrsl6TSDh6KISme4e4L10mG+feCTcunrs0z7e6qOf9FZSluImx6iTS
	 LPP2W6GYogDf0I6KmjeP5aHTJUUa/zVIUH8+BL8YNJMVBGszMJSn6mlqksI4gxujMY
	 LSv09eNm8yI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70613C46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288288744.12830.2265790117571072263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c069038a41b4571f09b41ba4295def5bd67b34a047f2d4100b32de296cbd03d
Date: Thu, 05 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672882887
