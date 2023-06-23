Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7318D17C2
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C647EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687500788;
	bh=mcWWqeS0wVtzzuQdKkUaD48jUz07C+CRInL1NFRtEuI=;
	h=To:Subject:From:Date:From;
	b=HbqSYk4GmwKa5EsTvEeJ/mYn9jwTETrO4JNs+K1qAECRq7LG7+ytepD7wCFGNS5oS
	 sgTSTLJjakeAf9uWLkZM0drLJ0MLe9ZEnVzjZgbboNGPjf7+mJla+2sLHSdKUZYB2F
	 p0R4sZf/lwpwvkApEHz9quf90rHmQqGPDuP+gt/YziKt4jYlhnKZCe7gztAoC1XvTK
	 oNr8/RiXd613isE5/nSg6/8eLj6sBcx5fAWWcFdaD4OeDdMd15L48cBNelx8cuhRI5
	 vykG37Yz3If40Vu0T6jC2DpeBmQ9KC7L/S3COCHiNhwC6T6MDiPhwOwFX9R4uGJaeW
	 we4hR5caBt4SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ACAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750078868.19311.1594997636266053027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c0404c8c891c4314cad41359cd4ec0a220ec759ca86545c71663f1aafb64f4
Date: Fri, 23 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687500788
