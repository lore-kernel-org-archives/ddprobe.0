Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6436AB1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D598C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667987454;
	bh=zy6yY4vJI4OREShDBnEGch8m9xX0n4KhQrgR3Qv7VIs=;
	h=To:Subject:From:Date:From;
	b=L5jFczYqjjYhNaX66fNCnwXKKWIbeHFnRa907PPxY6R6rmMYT8gYHcPpUQBI/eaYK
	 U10VRSqZ7qoT0NeJMi/Tm8/MwSwwCBOFByIPc8fdXWSztaDuHSCssgZLsObhi/UdXq
	 R5L/DqtizsqKybUGZjvbd1bgRBCixNKWtQhz4dlILUqlO49Byfwb4+GMYjf9EEwzXy
	 A6A4ZN6E/trQnzn/IG2Mcl25aPIy1avYeDmFva0duqkaGPzBd7hT5GXZObJn6cH6mi
	 okHo8YXmHhbcq3hukluoa0Y4NFF4DtjViQZUpT6XFvsMcniW2PeKMn3UsubWJLS9R1
	 1Bg5Z2O4SBXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80496C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798745450.21986.16463419034607790890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1887087a187248819b6a58b5cfdd3fc4381b90ff3d0be0662d9d7d841022e691
Date: Wed, 09 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667987454
