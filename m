Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76141369
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7049FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666524053;
	bh=QmlIMzQ+b6q4lygPhvCtF5cwDJFLAOI2CNcz7J4y0Sg=;
	h=To:Subject:From:Date:From;
	b=K4HOjKT/WSRW6cRqDFgT+agyWkWKhnunevEWVmX1RMocqbAAh0FCvnPlPBoepk3uW
	 5r4PRf+lQIjhS47eR5ZseCam52cDc2a6ChCa/jPGIcstUPm7iUnN0kqDuXfA2B35sb
	 bUmY6UEdEeZr3HBfdzA0MVUkqj9aT0zW935NQHNSWsCj+fvmo5IfDfFdi9GzmPkkyB
	 JntNO0PiLW54njbxEnJHE3FFx2FW6ti3ksV03KTwUhZ2VPmaNHjUWgOFPKr+LnbToP
	 LHELPkPHWDDpi6FtlwI1qpFrfq6sCMIGUcH/G73GM71iW1tCP8I1/od5y6//DXQ5Rz
	 Codrq5eAnnRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5396BECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652405332.10185.2409207393792447670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fcf54ee80a943fe9f7ec8f979c240f1c6051a23a14dbda6219abcfb76a9dea
Date: Sun, 23 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666524053
