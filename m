Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A55D7481
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36D8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693434248;
	bh=C1cWpKaGdeeES9ACWYzP7XJASpnM74/1jW6idawv5ZU=;
	h=To:Subject:From:Date:From;
	b=og6a5xQ0797DfMEzQTuHceUdlC4RsxmCy1eCdBj4+inqlQIv7a40s9GYOWRyqPQrv
	 pcwH2y7hDZslHCqHPxDXf9Na8Qey1s2n4XKuZ7tOpxAjnw3EKFWitCpn4ahflbk5CT
	 /dC1kGjLLTZVdzb9Foqm/1Itjx17gfyIke2MqXT71vQRm780CFooq7dKXaokJZBuOC
	 enJgk6fhP9gkEFC6/RlmjoTk9aP8503nY8IAO8VMfucmqjiF/dU4aFjI/4NjvCKLPR
	 WDFSrUSpaNmZ545k+n7WsfRPN67VxSw09YC+nZvd86xxLJnAHKdyvirIXjy98p+MVt
	 MoFv9gkylBklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B31C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 22:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169343424872.13390.3013265847856827438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fd3f6db3ee6d0961ded29f359080c0879a983dcc3970d48440663966539c5a
Date: Wed, 30 Aug 2023 22:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693434248
