Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C2A6FA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0514C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 16:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680539166;
	bh=TcCC6j+KO6jtzheZxUIc5loNeXnKUNbcxb2KNNaNdVQ=;
	h=To:Subject:From:Date:From;
	b=HddCfm9zBn5WZNm3uGtUZaOurOIZa5mUHjx9+YwzGgk6tHVm3bKkDW1mUdEUOeX7W
	 6B8TvKPNqGExDHw1BpK/Qz0lBo6jaKKUFoQTgFWOtVvgEheDt/4S1UkCIyt1pFx/MR
	 qbcxeI4WKseKpm4/DFq4Tv81cN1ADM3kszsLUu6V2jgrnZte3e+qFnUMuI5l/4FCSh
	 lGFgz2ln4Nc5n9c0k7FY7jXTDAVGuOMO4N8vfeqeOtIyWKgFs8xCfKZUy18rfI/1g8
	 WgVyr5Wwdu8vE6gy7pgdXYOmlxDa63EJ75rttXtXazRCWcv/Z2Iu25dbzOd1Cl3qPS
	 l871xiESjXupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28B8C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168053916584.17405.13405954651166370154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f38b2db84dcdc2f3d2f77d4d0d539da54f93ec86fc81d05d6662d0ff9a7ac8
Date: Mon, 03 Apr 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680539165
