Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06A62F42
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C615C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662588653;
	bh=/fFSMyj4zUmSKwojqVuufArvA4xw7Y71P9OHKCbZcPs=;
	h=To:Subject:From:Date:From;
	b=sGZHhg2pCOVFLM7qVlbKDYyx2lqHHqzN7ncWJQGB6cJa+L1VewgfMvCI10EGaywF+
	 4edv55AJBuKMwAg69ezS8TW1PbCZ8e++fNuZdfVwQESdrKk1cIL+6h5pIhD1a5iy/9
	 5Cs1WoV5InCU0zS4xgs30Pn99U+YVZJX06QWi8Qxh2SzuGBKpbY4e05NE8zBqnONjw
	 o2cSF2qYMckm234jNEeul76DzvxFgyYPfVnBqwSHsUUspvyKdfv9O4+6nHkudFOcre
	 7JGmnVUxfrUfqe6ik39es2INS3U+nznxHL7yQGFNpgYJlB7QiY5y5DlK2wXkjGmMga
	 jKYPurJznvf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D978C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258865337.4038.7748147202653785022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef992cae3153f4f1c3b9647db92135d495564b90a967cfbbe2e0893b37f6da46
Date: Wed, 07 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662588653
