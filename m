Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6993D82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721BBC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662375653;
	bh=Qw8quzzcrf5JK9Az5j9JCTMdlUSPHUvVXYnHsIVA5dY=;
	h=To:Subject:From:Date:From;
	b=rAdkvdXlP0Kk6PxZijOyYTWcuxlaa9KZERSJBz4NiddlJwR/whVDJpontZTKPI5Pe
	 9cJikrMKSXs/TFBX6D50sE2bHJFOl4tb4tKx3lxM3d4PqUHoDOOYqIAtny0uq3Tf7T
	 e9smOaoF8tDQCGcuzk6HKUBFYuQlL+BJgT8v5So6Zw8mBt5vdjXtIc7trtnh7RaBDx
	 w2T306zh1N0yP8GIyEv0gL8DTLKmccJcKacR7OQSR2D2OXrQUir7+qyp3an6YaFWwS
	 SvcuHW6d9Llrd4CqSNtgFimsGY5cKVbJm7z/M/IWRcezJnJ6e8ooOdMdrXZ9OTvCvB
	 D5vn12rZmgpbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56032ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237565333.15343.8424133074569188051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9971ef5151121364f03f4b21e3ac78bd1bf673e5862f2ecd8dcd8ed648bc8c82
Date: Mon, 05 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662375653
