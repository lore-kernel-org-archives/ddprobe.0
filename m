Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E351872
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 01:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD1C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 01:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695866168;
	bh=7S4W/Ur+G8Tsjjcg2ANkHwaYEHQponNOl5Rlt8/UiVM=;
	h=To:Subject:From:Date:From;
	b=HujjeTH/6bVrhHMaICubIqyxPUcIcCSCAm7ldZ270mVol+AnOai5GNuLwJLQMsm/a
	 BJDWr+xityHmeRn74KXa2/t48AdzJBzzDSR5YL3780NnKybB/1/h7Cdrf3qJ1O6wtV
	 1Es1wX4XZBmnyIE1Se9M9r6WCGq5uzqj5KspJNhVbcwiEWvVvGD69sf5hmczoMnotJ
	 xyGPpzlQoQGo58aukE5TvIUeQfjhLR3sZy/a034FxLBQD6Ot12Sf6/k58huxmm6xTZ
	 tDYIF4+1K4k69prz4yoiOnvxpACHrZ82qbePZiwxcRXcrP5rEXBRbwY1OBBWnmZ2rS
	 3LxCesiK+plig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D3DE80ABF
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 01:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169586616873.25642.15723692706954656891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94da73e93dd35bf0e14950e72c413ba5dc7b4aaee9ba97ec8041227eb17bd9f5
Date: Thu, 28 Sep 2023 01:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695866168
