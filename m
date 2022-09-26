Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53E47F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78341C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664153453;
	bh=puwoORWYTanoDfsDCYs4av8+ZwtK15D6sISRVxTohR8=;
	h=To:Subject:From:Date:From;
	b=Bd3oWTq4BXuArjJXimUgF58DqYgoeJlR4qxVhELnsKH4ZvfcZz9sgsDGKRSPaAw09
	 vJpf2ClNXRGpRTM/WiZTrPHja/Leodu4NzaV3GVj2o8fzcWraV0/uhjMQCRX7Dt0fg
	 nG7lWi4cI9ukWXrtWwSD4QselvVSzMcPzxPAicDEBmFkOQ3434BUbp6dl01+qf9kyP
	 d7fkrHq62Wd3RCv5ClQgQ+uW1wBGjjV8QpfLBt3K4RAkrDJ/st1Rb41MtZUOLCKHa2
	 uVr9+ApaMoWmlhPYgLftnWd4Fp3cD/Ua020h/RfYxkkDZ7FLiz1N61iR9vI8boOP6+
	 dBnrjt37rLs1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ECDC04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415345332.18934.818025194731669275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe63ee6824e0509a2ff0e0a8c0f34f449c1f78fcde9e91bc1a3a6150c83f6e8
Date: Mon, 26 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664153453
