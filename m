Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1DC15A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849BDC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661575252;
	bh=IqYJE1d9/CCeJTNFPc5ysq8O34gSOkq60tbhmBnD4UE=;
	h=To:Subject:From:Date:From;
	b=d0RkL00fy7IQYOEyOYr+sRgYfKqdG3TGOv6m5WUWQyeWcrx8IxpSFyWIgxBd/uWy7
	 LB7C7TXoeC+WpGn1JTCKKmuwUwqwhkajRnjx8QjZNJ/1589MU9Ve2aSgMIPTbImvME
	 GURU5zj5gy1JvDsiXapsu89Xs7TsViDkQ6AIpvbDBspDGkThNDHFPpH+7UnVApQTlF
	 77aY/uMennbQtVAIoJvYZg3kzX0Qho33sGdBLa4AkQMK7lg0tJNi4HIYij7BPezMu3
	 9XIQo3xHzfomLznSZp36XDyy51affkFiAPvw9OgTuNGX8Gh75XTxJ+mtppa/6SHl3W
	 ezrEL1nZNvItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64413ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157525238.303.12916224705874508522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a6ef9716365bc85b155346d0665b4ce4d026be5cfbbfa0224ceb20d37a92b6
Date: Sat, 27 Aug 2022 04:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661575252
