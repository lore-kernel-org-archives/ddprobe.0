Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B244817C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F2CC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664844653;
	bh=mk+x5Ln7QVBsbEb01309gU1SkO8AaCOcfa1T/W36OXg=;
	h=To:Subject:From:Date:From;
	b=jk7RRf4bv9qudvh1cvvShWmcjnigAtV+zQdO5cs5eFrdhoMN1uCrVbpNp9t8sHckM
	 DVRmbqTb33Vqlh97/ECr6MZBGLlOTxdg/1GhpK5tAHoxZTdqq28UPNWPC5RUc4sHem
	 kweEu0HYLeTU6nMAXjj8NmkavGbTJx3Df5pKqEoIHbLBVmeAph4RNCiyBfMP9oy33Q
	 wIQ3j9BaRokwtB5w65PCZnSymF+f6nQFkOeZIDbJZfi9pqMMvDnrws91lMCrswXACT
	 vvPUqxzNo7fM94L8W+ZgWE0R5X7tQAlcb85rGhj5TE8kEiNZH9nTy3DN0nKyd2zvTv
	 xfVDN7yvaTrVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F577C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484465331.8373.648113607701339829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c221a6b0d751b2beb5749fe5fb6c151842060fcabca21f2bea4383fec2bc29
Date: Tue, 04 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664844653
