Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A5BE58
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42F7C433CC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687794188;
	bh=OlHDVMqS6VOb9rQ+yyzqwYy0n2ydJdJ2X4Rkj/MenEM=;
	h=To:Subject:From:Date:From;
	b=P5G7uFD26u6QFrUI+6BJWAGHP6YjfFDnqsP3UzUrxSAETSC8dddkSupaj0vQaC20c
	 IJcYTkhxY83gaK/2RNEmh78R2eDL6plG7UZmxgu7kQI7O6TVYsTgV3nv5VzazRYagX
	 NnMWjkBcuTcMC3Cd1g5jsOxNbMf5AdbIreOG+tQUUbwVMNn20YTORpJei80cBD3MNH
	 9HGtAsjy8whdHHY7t9/pJ9tuPk+YFtNwggPr63BDTdhnMtIMrHeEBbKfhvHtUubLJo
	 77fZdL9yxWUC7QZYzrxsREFFJ+k/a5/8ejDlcEuY9qgnnamYr4SP4YDYSzuEufp/6w
	 /3y/W7wCb/Cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70FAEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779418868.27547.13871835595600238865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ed9776cc1eb50dd2076ca32ff1e8cdb63d54f5fb9a3eb52d0d5c31c6d7293d
Date: Mon, 26 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687794188
