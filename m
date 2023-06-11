Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D2115BC
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB8B2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686454326;
	bh=/RRbPLWe28THjcE/FoOGavgwbfQ0mZdlModskyXuS8s=;
	h=To:Subject:From:Date:From;
	b=IFZK2xMaXy7Tg7egu6cculrkDcVl/VY8wed+MlIOYZvuhknoO5mXhzzxn9sA7uJ+4
	 YjZ5UMbZS0MobgfhBjIlJnIcRfnaWB2gTWUPaIzWc3y1I4JNPmxJyqA/e/YKSxXvQc
	 gDsRBJnfrOoj7huq0xv1t4xgG0SHG4y4P8JZTVRuksOE6YBcHLerNpCa+6v0VYGG7i
	 Fc0ZAFzsr0iltEmUuLT92jM0yiz5Bk6oF19UGCLmo80iBIjtEN3WshJP1uckOfAEyK
	 VxDwohaRRNLSupZ0uq0J4HRnbMupxbCa4LrLMaGZpSrhv8mSdDT5h5yt+NnVt+RRWT
	 5+LCXjtCFPLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9348C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 03:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168645432581.7050.1327490137662050830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f73f4d81306d76cd23c7a65d4883fbda26c7e29fe26d16894b1227b9514945
Date: Sun, 11 Jun 2023 03:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686454325
