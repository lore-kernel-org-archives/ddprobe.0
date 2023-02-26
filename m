Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0E2560
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A52C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677418565;
	bh=V9wShLu1xzlZhzjdy2/GmwfxiJKcErVGskZTDec9pfQ=;
	h=To:Subject:From:Date:From;
	b=FAXulrqFEiLfMv3dmxz9cYbtbbEokY7Jbqy6zrlMB+jHqharqWZVXcQavMpVgVM0w
	 2RwjghAH5pAnwzKejpaeKgJrSu7b03Stiqaaa3oXCxq0p+NImu7Ue6C4aK6A4guRHm
	 HEQeV3pqAC4iDThCE8sIkfYY20xehhP6dlx89Zr+TjP1QajoSBg2apCefZER2yhRrg
	 QoTgClwgDuY6/bifyT2oOYjPbWDrl/SuH0JYDn+kBDtcIrSVu98q8BcJ8A48W0rhA9
	 +IV/YEblgcPHoF4Oq0qfFqu92xTSsWGrn36hdmwRxfEiQP66CSPmts1HtmJVmh8sZy
	 oRFensI8lOifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF403C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741856576.19155.4627170895786357155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d79b9b133d85f8c6c8fb7ed791df4b3252ca1e865ebaad3bfcbca127538c623
Date: Sun, 26 Feb 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677418565
