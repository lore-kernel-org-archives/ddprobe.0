Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC9F15AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D42C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667854854;
	bh=x60dntoSX1DSMdBbqS3iiMpl3vJ1+h3HaowLJtNSjZY=;
	h=To:Subject:From:Date:From;
	b=poQQmrYoJu5dA7A5eTUfD0xnFxLt9jHqDZJtF0IYTqAzU7jzn45mMJxf0h+l28CKk
	 hArYTDcAgHOafuwWD1nEd63IYdUZAHTF5/MI2oSZWujjt1ZRU+voL7r/JsaN9rl8Kp
	 QoJS75lEgKQRQvECPJIOf6LlmHqzX/DZmtURAuz2iViUWwcNd0SR4pPuETufDsTCzH
	 9sSbz+F0ddtemAifUzomJL+P2J2bmRYCIoBijxxZR5v5Kq7ATDf+c3EThFcPSyhOMH
	 PWS7Me/yF9ss0uf/Tw15SVQrUffGlBjdjSBaPMQcrhsqLat/pcEeJEWTmZ412Fit7V
	 9kR2beuflVy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529E8C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785485432.10153.9975529907377327985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f9638511e7e4bce2863de3a264d24cf834333630307bf551fd77983b3e139e
Date: Mon, 07 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667854854
