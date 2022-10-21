Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF07118E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6520DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666327253;
	bh=vCdNkmhunqQ7yxMV1bRY3NI2P3EJjR3gFTuZK20qfdc=;
	h=To:Subject:From:Date:From;
	b=Afs9gv7nUWaIRs/tXjGYF4VrkAgP2iUSXqiKOgf5+IdQCR6DG34yQUxNwL62q+54K
	 Bx0eUq3ioPhOZFYTMIDqa8ItSQOBNba3bhKK9KRhVnLDLj4ala1t3D0nPY6nX2oCJy
	 Ps4B07tLg2ARDPbbLwohwqT+UWmX4MHxOnVETbVzVn9z0Ja3nc17wMhhLzHSIUv6SK
	 JX+zW5ebMganJfmm5cP275B7oEHeFlxU1HnHGMiwVrpFJtI3MFJJNnsEASuYuJpUWt
	 f7v1KWil0waPbCNvM5u/jDB/AZB5GUTHkHkZEnVd04TGZRngc7Jb5HzQSgvxZ5YDeE
	 zTzkex3JsmfNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F663C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632725331.5092.2889689998782416651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238f6fd6ccd09cb06f385a78140f8792dde35d0d782ce0f173fe1b26e50e1091
Date: Fri, 21 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666327253
