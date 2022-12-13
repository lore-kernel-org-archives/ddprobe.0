Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0A4748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8171FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670951487;
	bh=aQRJxq9Pwo5zax8ZrNxhx4SgBl48CsIUOkhCMIhg33k=;
	h=To:Subject:From:Date:From;
	b=Ywn+cBWXi2QUdPyf/QdyswtV8pp7wnz/4idBQdanbVxCD6CE0zmLmWaPZOIfpzNti
	 uCQhpB37vdKPigU7jwdOVOaH3TSOAALFpC6mUX0OLshQ4Jzi8GghVJfR5gBNRpAMaj
	 F0Lap2HKfIYzPI5mGVm65bZak4fdnLOiW13HqLp/Sp+YtZw38o8cFbsXs6cPSvXufJ
	 Juj6KVcyQNQ38plPwih2b1qEcGY9C9FubjAjGBRJw6vpXwLZiuMBZDyR4y+sXF2jxS
	 ylRnkaYwqObsWxJFqcEJ8IZdRZJk/8PmDWMz1W9Aj7EqdI9mCDO1D5OpaxWqcSE/FR
	 +dBjQeokIkUnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649EBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095148740.7797.16342967288097329014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac8e82809884e40fd5045e06f79c9563d08f1cb068aee24b959bb782ac7bdb2
Date: Tue, 13 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670951487
