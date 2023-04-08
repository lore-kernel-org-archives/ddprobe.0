Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3671FB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0ADCC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680978065;
	bh=wluTje2YzJ7M4AArOBSlJIX5fu/jR1z6hNoemNm7178=;
	h=To:Subject:From:Date:From;
	b=nhqCMo3Fk326By65f+MheC1xVB6Wsr5/hsA0dZb8ja2ffNLnDIz1K6/TdwV+vceuJ
	 ZM3vsYGPvWbnPZa11cpbOV800Ptes+yCACDWZ6zFwiZ95opq105XzWWGMbGjMNfpar
	 os6CCTlnxTOAQvSIuSUejDD9cOw5JqIreE0rrxmv8K9hyjx6deoXlEKA9t0OCm/GVZ
	 Genqc+Hu6UVsamYyfDuJdLwcnMESvYogMTgZlqjNjrfssDw2/2PIHN8g5MITwMCZSE
	 ZF/t44jQG8QRHOL2dVaZJDV3kH+XLAdrUIE4CRnhIMuZrafXpDeHohAeDxaK4GNfrc
	 AiWDGe2bu+cRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78F9C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 18:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097806574.22309.604602288301405073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6291bcb1e29a26b8b0d7befb06c431be565156d2470959ab0a3da5d4c222f571
Date: Sat, 08 Apr 2023 18:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680978065
