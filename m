Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BDB17ADC
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C2FC433C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692229388;
	bh=ljFVnNIbC7A8eokw0B4Q6xZOl6a2+B8D80H+BE+BWjs=;
	h=To:Subject:From:Date:From;
	b=WK48ceKlEL7Om1p6dW9+gpRt/MfUxnch5TWpUdVQW0UtkHT08ViYJ+UJAAj3MKZJj
	 GwND5Mncbe+ECOBP2zyNYTpViLtIj7f8+NrB1Epn5XdqrixzLFcxTCXfM4QU0t6prK
	 ZWTh9n1dcLjHrT1viG+4GwTnvb8bEv12aZCLFhuFNiLPRsOj4i3yVhCLAQ3blW/b3W
	 HM4Sw7AWGg2Tzforc/VxIzdAqG6jfUSUsAd7AhK9tGoPNlT8PU2BFEPg+385FHeUg5
	 bCsAyEcxdVsBgllrzFKu2oB6zhfvtNj5kD2S/32N4d2ghHeNFSeb/QvA4mUZt5mufI
	 MYUurLJr4bMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39F5C2FC02
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222938877.18988.10433640468484930027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e86f108cbce0ef83687acbb172d8b3b5d30f3567104ed794b2156a992f272a
Date: Wed, 16 Aug 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692229388
