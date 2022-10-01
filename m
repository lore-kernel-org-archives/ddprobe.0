Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39D01874
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728ECC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664613653;
	bh=FTJoFnTPSvyPaEYqC+BYmCZx/noASrSQug4f1B0O4qw=;
	h=To:Subject:From:Date:From;
	b=sHQnia24xp69E2FJo0kFjJRkNf3nNuB9zrJJgBiYuHqNhAPFtH1OD6vUkLWkLk0rR
	 fH7ZCctS83GPo65O5wK/A4LECVsm1RJZOLAKvEHy+0hcQjro32FT3hfIz6QIJOUk+4
	 J3QZE20udtGdcm++iaFBrdYu0H0ALmG/lCiTAVg/liy/1pKpdYhEFIKiDZPCRzO9A+
	 T6QZDdmmo+6B68MWcADf3Xjdfkro4plCD7KiOP0k4kuWkfE3/Kbp635bAWKE2lamEk
	 d0B7J067+a1MkIUId7qVJJk5HjIIg/WEnhWaQZcGKhdaaIYrmCGC6LnrzEJRNB7vXW
	 R12WF2tRebhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567D4C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461365333.17931.1579976435933118465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e6ed4eb4d6d09cbbd3121d10806c3db2a0d4c7ed4bcc18ae5fa7834f4ea18b
Date: Sat, 01 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664613653
