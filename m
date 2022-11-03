Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63A26FAE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DF0C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667478054;
	bh=ToEI/DGYgUE+acrcv5LH/n5Y5qIDr9yp1//Uoe6bTbQ=;
	h=To:Subject:From:Date:From;
	b=ZggKLBPkhrAaVU1WBvb7NML7rCx5Y9qErxUjTOQMrZWJYJs5EWM1N/Nwg+e4x2h0y
	 uptmSstwDEwCcAFQ7BXwVyxsXRIXU9MTQtUg9eO4W7UHLKFd+/2gz26jtSc2dEN0Rv
	 Mpd8PlmiZ/yDDMcY/NBTv0lePnDBlyPkjlKPNk80tuRvXqKEorEV6OvphtSrxSAREz
	 NfAYX7JunoSg46GEgmLARt7l5/SQ2s/AFkBsgB+k7wdkChSSlAn+ARAEasBb2sQrf/
	 7+blgC6Ik9sgBxJeKcFRaKmM/TW/VNxRbwTCef1tZCAsDbrM+M7kwGmidzxPlgdGXr
	 ZwfQf6rlnIU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5495FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747805433.29613.5054060268416995307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cea8bb9db777d6e5c269ef924d7fd19f6682541ea9d1c6dfdcd4c0cdd74b50
Date: Thu, 03 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667478054
