Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C26F1C32
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:50:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9527C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687103408;
	bh=RXWUx74s1TjlZXo7/Q47pTP6mPdeiiJY7S1G7DvTYxo=;
	h=To:Subject:From:Date:From;
	b=DATXKzOy4RG6GuxjLwNTKhUAnlyX5hTjnQK0n+nN5bmwl8P+RggmHv9yxMuJfJ5nA
	 7m+GA63vqqOjGusno5bQO7ZjbQnP2bdyVjc2ciStP9ImHXC1GZGTOo7ltQjb3s8sgm
	 YIZYlRQnRFxpQE8U8ULR1zhdycxYv3T46sveBCye+IlwpHi4vL7JfNXoa50F/Bq081
	 7HI0He6JSXnQ6GFMKwmx+cND2IIH+giTeiqmMMLXtWEut9lvvMyRlkVMxdeoC6X2rG
	 wa58RIByjXdIV513npSID/v8PVgEXNovcRXt5gJzRsT47f8yD8NPcddux/V815QR+B
	 sPIQEmW2FYDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A8EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710340868.28493.11522295930445096262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e41e7f1955fbe9410b167bceacceabf0cd0d86cdc388f87e79783986fa985ca
Date: Sun, 18 Jun 2023 15:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687103408
