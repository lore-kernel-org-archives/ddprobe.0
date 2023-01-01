Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E872215B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88420C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672594887;
	bh=Y/SvI/1LMIrSJXP+LuoGHZKiXgly6SIm3DGPFAP7nOY=;
	h=To:Subject:From:Date:From;
	b=umPNRHteixHIPUuIRac6a7jsjApeC8IXyvOSzrQf1/i7rzwkSZJD9Y26nr0pmXUW9
	 nWxreOO6HZIrjEYm5BLAq8tbSv6k1oBQ2CSZ2BQuGd+ODTpg8jmSgcLBl0Chib/JZT
	 OK3n8DyfhCtrRSgVoFmuA68R0nMbIRHnLYY0g8e36Cypmdbvx/wvr4j52IAAVboqFv
	 OtPlqkuLbgSyd1w84tbwAlHu4ACb4r827TO3JTfY4zoN3lEOON3mi8xozRvtu0roFq
	 gxNMXhWUvg5Bn4nGpI7pBP6W+hWdpf/K6JHeFpHiBXCZ5l945mrrlVbA0MCfriMCds
	 P03MRj9j354WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6690BC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259488739.2309.11053288555356352985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee534a0b673cfad1f6cfff4431d224a53cf1b88fee9da68b8d146cbc262252d6
Date: Sun, 01 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672594887
