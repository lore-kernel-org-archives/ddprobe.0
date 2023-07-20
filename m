Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C0D2FA47
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A734C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689879129;
	bh=8d/KKiSWsBTpkqrDpXzgN9euODg5JieEiABSPJcCvhY=;
	h=To:Subject:From:Date:From;
	b=F5YAJy/duOf1pTjGVaCn8PEc4iwzjwBcHIw56VMloNN3lp7PaaNB05T4bF/PtMEve
	 PUHv/E7kLnQA7YMFdtkV5IE8sTqSlv3D3dlu5DdZmgWgCcipjRyccMrGD+92BhCB+7
	 dCQhxQz/vrGzRKrwza0dGFqfNPfrAejkWwj/2S4oc9ijpxqv31YBRO7Q4kupDZg/sz
	 Mi/sgtmrPHYMbaSUm2ZEAoWmwouDlkqCmIaM5UVEJ8Lk3Y7wLQovuJzNaLkpr4ovxb
	 n53b0Qy5zCOPe/5iDyYRE509TVPIMIMA8BQ5q+75YtowX7bdtQFhNdyMxqA7pJedxE
	 g/kzoNUpQHrlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD80DEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987912888.12291.11852336591378347732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9912466f86e47ae13d42f862db26667237f516ea5abf2bcf1879cfba140d2f2d
Date: Thu, 20 Jul 2023 18:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689879128
