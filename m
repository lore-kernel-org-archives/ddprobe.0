Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE7D2E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72B8C4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678832345;
	bh=L+lykLCnuS0N5L9rRViIy5eXurwEXwwIOxc7QBMXKx8=;
	h=To:Subject:From:Date:From;
	b=q614V30/SxuDw3poK45/x6iSYyzg8nPMVje4H2yKjm8IeegPaXc37dc38lRO5CxGf
	 zB9QEr62oHontHNdKyWMd1npqaR5qii7uTCGCvZ7mL3Iu6jhI0SUaan5FOCMZDo79n
	 KU8W8CIC8WMyh07wQqL2fL4GqdX9EuZK1csFTOX0rQuifE8csGRxbrR/WoK/cKyFps
	 ximvy5xU2aHSFpOlRCcxU7rWlvFY9xOl71CjNblbybItznW1Ggq6RwJhFtcq1jA2hz
	 ipQ9Zhx5eGUaHd4xpk0dpgiK7qyP24FknNUhkwoQ9QryWS0gsLl0AqCCnT+xWxGgZe
	 nD6Qh0VOF1+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC5C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167883234575.5161.6159843496882422070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bfdb0988cd031a522ef9b7b684a4a807bbc085e6014df2141ff0fe032d5aed
Date: Tue, 14 Mar 2023 22:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678832345
