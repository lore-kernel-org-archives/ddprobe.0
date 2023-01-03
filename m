Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41342F35
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730AEC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672756287;
	bh=VgzZR1vsz32pN4YtOPVSONflzGrV9BHWJ+mYN1PZTCg=;
	h=To:Subject:From:Date:From;
	b=iJhmP59qCRZHLOIAXATVHlQ/bQ0Xg5270bcS7dmg3glthNwvuePpot+NibMQjGdL8
	 cUp+cR8ky2LNslQYZAvWOhEO5O/34f9OhZiwvilAwP7X0enCIaHLMtVvClKcJHMCf2
	 u0p8vLYolzsGuxIZKd72KNXqW8CsEwfIf0pAaWMEDivzjVD3tNrpnb4Wxv88bdj+A5
	 X+PxbdIeXLCTdfIhjZTnZ7coD8Xa98msRTPHHJJM5iMIJ2hJhjOaP63oW4fWjSFJpb
	 EvyWb72CoZoO3OqzofdyBQuDrlApQLB0FfWYmP1NcB5DLmnZ1f67ixwaexxno1IxRV
	 qiZyKua8q41Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3CFC53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275628737.27482.9378775561038171266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5102847a6fcf76eb45f3b7ecad613921a19733cba9beeb4d3e0b882bdcd27ee
Date: Tue, 03 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672756287
