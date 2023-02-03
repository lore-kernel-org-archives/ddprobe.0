Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4590DAD5A
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13C8C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675454765;
	bh=BXH1eomhWhGTk5oU41GUKIflI7UhhwHSy7XU/urSNUs=;
	h=To:Subject:From:Date:From;
	b=a+8upbIryB1gQWPOUesL1Usw0qhhAAd4dT//G0AdC6nHdqmOkdpOterpm93sKfcpR
	 S2WCk6FWOEB1yYruKnDc+Cnm+wQjV4DLke3PitSQQqz6roIDh24I5aKOKaZmJGwS5N
	 EszvHKsZm053kXrgoYNuWKQfTySHY7fwCqGLSrb0mAGrg9P7H7uxheRoDAp+hTO0SP
	 vTFp8oDyOaCQcUidXHrWHkyCdeD26uGVXhlc/+xSqyNhATYQSW9w0F+CNEElS4uWzZ
	 LqtdanDEvlFuJ+QqmeoCkSIXqSWsWon1EulMuFVf0q6Nl8B+oDIeB9FlyqUqy4iHmR
	 hKypiIUoCmCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A8FC636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167545476578.28236.13983542109742081331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd6fa5188128a0afd809a9a6c3badf143c5a2dbb24b2c5ae61d8b4cd082c25c
Date: Fri, 03 Feb 2023 20:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675454765
