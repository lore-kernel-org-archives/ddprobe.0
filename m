Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5057E
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53D6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683253565;
	bh=4xOF5YTXyciUimytZGEC5ECcsY6OUEg4f5rHrJo74Tc=;
	h=To:Subject:From:Date:From;
	b=c5LtMwPZnycVC4PG3INqXp0F1m8hI8jaDnCFwlNwIcA63HUuKRNTuzZqCxif7GF6w
	 ur629iF7NB2iMrp471s0Z7Z5gDe0MoGpqSHs4D9JTNFLKgtXG8K8RLaXuQeSyTqpo7
	 YVb1XRnaVZne2ChXX0VlrDBd9TcpzeEgbr0oT/pwywVLay8sJsc2w9v3qi36NCH7e3
	 gbaHqsNA0/D8xDdlJ2NiTfI3P4UC8Mjp+Pp7ARFnaVAhiuVc8bUxzQcIUaeGPzfLaC
	 MXigYuDielppsReskW7oLWAmgJQq1K8wDweJLU4xFiW1UmHzt8iFMiWWuffOogNzY0
	 FukUJh0ZKiWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09ABC7EE21
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168325356577.21445.673519025982688470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f428b04cb5215ac5df3eaaedbd385c1bb4a8a4a075c939b543c93cc3d502c2a5
Date: Fri, 05 May 2023 02:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683253565
