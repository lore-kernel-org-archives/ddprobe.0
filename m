Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA667ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B0DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665828053;
	bh=rW2UsI3ryrpPzGTCdN6VUs9FPNskNYgxd1CruJ3GiBU=;
	h=To:Subject:From:Date:From;
	b=fs5rJHSCcYqj5s41bhzcrvC/fPYnHTrMUMnFSUm8LCAzZm95Jc/P24N8Xn26GEpIj
	 8FIa6uWjiFdN8TvEnR4juMrvWf9uKjFQy7TpE5UeJVAREjNAZPBj+1oB0qKWhrU9Jx
	 lRXTF21wmFuSNCgl/FPZoUdYMT1OkN39+N9B3hMsM6tZJj5YtqFkhdiRDHiH7FkoZo
	 9YzKCnwWrNNWDTQDtV3waj8C4AuHiKbiVEYusIRycibR84yQzVcHjd3gOydJ27IMRP
	 zIjLOrr//tvZq3iF4hPOyY/xrx9ckiaD/JXnCWzeNjKzEC7r5xXu1uRpyBXqLvg6vt
	 LAXgcHO9RrRQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D25C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582805334.10949.13086592053766500965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a41df4437630f74d2ab7a75911f224428d038139fc1db26cf3c9847c0e84f9
Date: Sat, 15 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665828053
