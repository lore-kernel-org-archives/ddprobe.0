Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41992F2A
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7555BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663772453;
	bh=xyY2cXZmb7Od9yM61admqxLsbGlRr3iiZASpLxPkNoU=;
	h=To:Subject:From:Date:From;
	b=JuB486NjU2CO/Hw/PE0AwnlcIRKcPZ5e6NqXnY26infYyOleeokaP8CohlwoyXSzE
	 1xh8UChdHnUxgOSC99FwuKhROrNdBAJWTMUFVLBPcWB0VTZExmEyJxMa+p9wQvU7Lj
	 smr+OFzsmv3F1eJDV0LOxAeqQidKT2hoyY26skfsKP7xJvzMGP8LRDflL/rmAc0iQ6
	 n9NdqUhrL8eZHQ1LyQAcudYp+fHPoEJa0WGbirmJa0ZU4wqJl+vF50CJOuzMLv3PcC
	 gVR2kDRwoUqgPArLSpURdVQlzRxenhrgPRCg8gcoj8QoLxVPsFPYQ/voG5ZADGwEpF
	 PO3S3w3ABlLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C98EC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377245336.1839.15465281144717423082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8244ce77b08885c939ab4f1b9c32f83d9c926a65164c9059158abc0265ecf67a
Date: Wed, 21 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663772453
