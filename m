Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F868C01
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FACC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679499545;
	bh=nr+snIQlI7lmYJPvkVRESsemR1BDYJrPMWs4vlC5Tjg=;
	h=To:Subject:From:Date:From;
	b=gMcSjxfW4YwdipFqU6tCSsbstC88XgtPW0Ow50C9c/vGBWgOg8/P+EKHeZDfJIQZ8
	 aIRPlrMKnfyvabRK8PbSEBo0A4yisOnhf+iRyAPYXYUAssPEy4pT6NbwDG85kjfOv0
	 +qYdrcny0fycGsn5MWk/klcch/LuSkc4feYoqh2cBKhjGn+CLUeNCxN8xv7jw69YrQ
	 lA8bp9DbgQgsWPYOc5Ffj5qg77atF0tuIbpB1g1/2M2vlnO0jFPRVIFAVh3rPfcLQj
	 gWolT6EzwbC2C8So+000Q+nbHk74q+PV/VDwx998HjuGr0WQiEDRvqC+wOOIeelbhY
	 /D8B5fBL2eJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DBAC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 15:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167949954579.12001.4117745351820889747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c097cd91004540c9233b6cf1f4facf852f9b67ff4518b96676ad32752cb47822
Date: Wed, 22 Mar 2023 15:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679499545
