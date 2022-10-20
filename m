Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DAB17C4
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C145C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666246853;
	bh=L80CPRXjPege96JR94N6aJkVnSwI1ZHcenXFDAQu6Gc=;
	h=To:Subject:From:Date:From;
	b=RkrhKTJuMKoC2ysJmaKnkF61OBEpBGuSjXMJNObd3f9TWTbMpGBgdRK2VWZ+fpxq2
	 7wkG76T7DJesDlCKRZ8k9q7Ac1jJuKbhYECn7/Erjmv/Zp/nOHU/5T0+a3gkNI4p9J
	 mnINOO1WC/yIf3xbh+qPGhEV7nDnUonaoqocwLy2Kcvog1m2Qkb29v9CS2p+pe7Ljj
	 I6UfhefRVEUUror34gtGdKAVe/p9M/fAljBWI0lfnMQV6AHtZrIEPNZKtZX9PlQt1e
	 cemCYLpguwQBMv7vWhY9OGJY5oap4pPR2RL+W4+it2pri7d2RfLyUhf/HRYtJJXFDU
	 v4MurJ9psodNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C29C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166624685332.16132.14393446881238122522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ec16239fc5485ba197cd8b1f369e230e428a0b1042524f685f9dbbf11dba70
Date: Thu, 20 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666246853
