Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C468939848
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oof3jFGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86247C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704868096;
	bh=BnMRfytK5u2p3ee97v1FZTz5Vs6+7p0lW8bDSUz1bvY=;
	h=To:Subject:From:Date:From;
	b=oof3jFGjG7fEoQPVwRmz0DvyqSm2q+tWNd92JfA1yk17K/lW5/XdLhUK+MD1tVlT1
	 NgFJ/ZH3UU2ZD8T8Zfv4ZrzWAyicPUeQjHSRs7uQLVkQ25IF6kRS+uJEQrtsHAuH/w
	 WGDwUio+dL3/1NNaCJwPeBFuv6bTmKO3IJgLtCKulbOg+snKrHS/VZNayjFeWmy34D
	 Wh0nrmhxIc/j5+gmPEZCpKFKjqrW1GOy56CnGIXfkZN8nSwQ2nYzI9I5AzekpE+s1p
	 VDcfrJQ2y62V2qQFFVvA+YNDPN2W+6H4zDKglhYo3MJ4lRsGTlFckoYeORndX//Vvn
	 aV0YdwYtVyO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68CDBC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170486809641.31844.2708726929837886959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f569c80b4c7aa6462d237d32adfe84a1d8b5460f5ae546186e31f05f2e62c7a
Date: Wed, 10 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704868096
