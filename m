Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DB22571
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6D8C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669986054;
	bh=iIFSEubiyOi3ClSM9iP9O4+FOlYLqjfUiquQ56hlQsY=;
	h=To:Subject:From:Date:From;
	b=S52jNroFtjSJYeONHUI/MYvon2+At7l18UOTBvikPIaVaiKLS7Ov/89zTJlGPsNJC
	 vnNKL1jedJUdW79eSASgqNE5j+Or+GM9d6poUQ3/TBlQRRtcaZnlsazEiPua/W3VE/
	 8GHj1BLNZBqhFX91VJJjyVCZjJsRrISvuxlUisTz5wb3KXyYvypk/hMWxM/2jdByau
	 z8jJthGjYmINDyOw2up60I2o9KeYA69RdKMQnsjSK5JK4tz2UeJQjTRKNQwqE2Ljg6
	 2YunPTfjEqYWb9KIGqMjdWkfIDXZMmcoYku/RPpRLo4uYrAVgdPWRtFtbEgtx4HZpR
	 fD6vUywoIs40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BE7C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998605432.25311.14044680267940425092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e7cd41a6ae4c3124467700c44ed0d57855271ace4e4d7b21d03d0a712bbe84
Date: Fri, 02 Dec 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669986054
