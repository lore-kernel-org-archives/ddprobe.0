Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDC01370
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC2DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671961287;
	bh=D5NcsO7GQneGPMX0a7lOZewSOfKQauNfNi95BjTxO+M=;
	h=To:Subject:From:Date:From;
	b=I6yN90J2K5PSKjrxppX7k9L7gGRnJUn6THl8/PmUHT4Br5P5RZs1HEe6UlcAOvPG8
	 uZURWMp8QnF08DSqlHrN9NYjMFBhXFaf4AfsRSjFQ3+bTTB73KXwRk3rFaTqfDRfJU
	 UQrH/AxZC2usuJGWXt68srDrgI+XOeytK31yVuUgoQFNngZzzdop7RvpKNCm765E8e
	 q+cBq4pLdTqqUNjFh8dBu6dRT3Znb6MJt56Ci/SbCPj39pe0KLh/ze8J48Ni6RcmZO
	 Zu07a1GhaMrBg1bINL4+PpViubY6PsmyZE0qezXKuhIGSU8GKIIXbV9DIS+G/jQBbi
	 qiKbTnk/usuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627B8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196128737.6322.7924726809511041160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38ae975d3e22fe22cd21163d245ac0f50ececa5ad1b3554aa9b14b16f0cb711
Date: Sun, 25 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671961287
