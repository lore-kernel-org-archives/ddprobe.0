Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54F3A51
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691ADC433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664355653;
	bh=bmZxzj5J34yH2jo0wjQ/GYdDxqYLFLdk0hsZLfDckdo=;
	h=To:Subject:From:Date:From;
	b=k238AtOv+CYtdmkp7kYXf350iaFMdu122sZj8UfrhBsxnv0cd8itmuwXfoaBjBSL1
	 sR00y+SazeuGt1FV5CIbVKsLCo6ZGvsfqZCFojLnXUZBooi0+Ap2i5myUk2+2CEp9j
	 +22vY0WKuJIqMI1owDwjUBbMQbsGW1X+wdTyHaAZvDpWXd7ERbo+zC13JY49FBi8Bj
	 K/LKuR8z7N2jt22iHP90MLFdAghxoLjVha/+S7O4GuRSM33V2Xq+6imiqKRb+Iydx3
	 1f1u3NM8UsSIfx53UZu4WssmvusYMavXvlCOSQDQHVFo848GHs+9KdR/Zk98YqZOH7
	 gVgfWGfZDYbag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52536C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435565333.907.12982117798796420800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0868191e00977ed8d4c517a6d18a9161a8af808e5b53e5eb033c65d4710261
Date: Wed, 28 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664355653
