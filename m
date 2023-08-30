Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA3B3FFB
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4C9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693400648;
	bh=JRyqCdHpmpY5CLlI8Y2eIXrUD2P9JFUNdUfXQH0w6Uo=;
	h=To:Subject:From:Date:From;
	b=OPwVZmve2g1wG9mY78mCf7+cTyO5UonnBmodlm9mqDkSBnYfaOsevZZUSbXqGYuBj
	 gqakWVb68xTjlIFWsm7SgND8yH1tH8jAj7teGPKJ/pBQYDSJmQO5E36+WswM+D7UYa
	 gUtGOU4XXhi40nwgTaAVSK6HM4gcg2mN07lU1rrv/96i369U84jOeuuWshR5nAZ6F2
	 zMvFqwUaCsmwefgKc7zeEbngWUSdw8HUCc9VEGti1tfpWuQShXxl6dYR3MMJVW85vE
	 bLhlj4Ii64Vk+bcC4uIpj+/Gh37MsjqawGl/Mewt1kJckofvGHdRjksg4QMdwSXjoZ
	 Qlrl0aIGoVKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB09C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169340064868.21934.11259456196151007700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a34bfa2ddc0b4369667a281ab90baa7e1e9766893de1f86cd1afe6f30ba5213
Date: Wed, 30 Aug 2023 13:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693400648
