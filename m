Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8AE5229
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4A2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688997428;
	bh=xCsF8+SffFA0JPr0Ck0kxle5ZSUp4DP2M+b+lyGkjIw=;
	h=To:Subject:From:Date:From;
	b=taIGKyPb0sNm8Ey0WxrRsCW1FXMah3KL0maphetSneUzm2mfPoL9zr88mtd6aWuPC
	 JQJuiSoR3IUyzrnvu/rqJo31aQRhAIDOw5FBK45omK6kO87+mIwa338ow8oPe5zir3
	 JRVYsMQWZkcu1ubzWYYHyJJZFy0/7FjnOAI5joVTAMRq6oqWW+uhCzeqNPB3rbVfyB
	 cxTktnkgDf9sYxWJbd+nepkFJOBrWTpdF/PIJWFlAfNT12lcAw8zRWFsXxMP5QEIWz
	 /MkJdF52GHNNgbMRTtG7ZwNOwHQN7l59hAJ63khX1zlPfPNGfwWqk6Tf5r4x3pbCtm
	 jTopXrZGM+ZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3105EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168899742866.2668.14318094404311337785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fbdc3c79f8772bb99a85e771b4c4e6184959d7a5259671464e27825383f87d
Date: Mon, 10 Jul 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688997428
