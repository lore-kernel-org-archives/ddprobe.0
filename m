Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D646131
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB39C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661899253;
	bh=MpjYxhAkE6lmqttc6L3m0TGPcX4miEEm8GW3OQkMrmE=;
	h=To:Subject:From:Date:From;
	b=UdqGNRKPFpPDnX0VXD2v7smU9N2g7UoijsJaRyOEC7E6vPx74to/pOTldVuT2KJQO
	 Fja2y751GKKUO/j48bJVgjTP1TmwIlQrCc4p91QJpPF0CM0ZshhWQIrr2FLc+Gdaxm
	 kBdhsqR17Jgqw6F0J8488IQ1DcxrDQhYFzWXX9wdPCDLAOB3pgJTtT14bmrTplitzp
	 BvUYJshQz8Nfjjiy8JjiMVeAwsfCXR7G4cSoV90iqq7BdJAtKGl0CgsG/ZCQ+GKQk8
	 w7iSQ+YIoIdooUES2YHc7usiiCfVuB+Aavvbyb3BCnKoU0e7gtoKE73txO+jkPZNm8
	 6wnUFYZFsFHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557F9ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189925334.13948.9802866830939711743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a794053347949bd9b50d26e213155aad057a6022207a6b0f181b7a1eec31ccf2
Date: Tue, 30 Aug 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661899253
