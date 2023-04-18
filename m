Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC111FA0
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06D3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681808346;
	bh=jb/y8jHT47sfuP8OkxlS92k8flZmq9iZxhHIfs40mVA=;
	h=To:Subject:From:Date:From;
	b=Tj2o7jjPBH/9msOrhQLRnx36azEOM/VGoEeKTiGxrvXwXE35UlbHlKTVVau8cHKk8
	 a/ChpOToVIu1uoDM6cZs84YqjPlUHqF4O/f5pupNlgnj7GnR4J38PxQ71ZciZkZUd3
	 KSZ01UIm5hR9vJkueGEdLRA3/lZn0WtLCrFidziKQ4vzwFZUJvD2wlg3e/VlA8catA
	 7JSWAzcZPqaJNPGsTbbcGm5z1o28Xoze41JbCMu36FhPnN4jbRv6q5ClizN0+kgJet
	 hjbJEquPwwOwBRd7DVe7QbMNEFS0MLroYiEPu26BOH/HsQ4L4TPXWJVFZsVO49mej9
	 7IA8KCLmG14qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BD2C77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180834578.11581.8016678851066627313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fae6956bc864f9949a3d008f809592f9f7ba6153c977413134e25126c267715
Date: Tue, 18 Apr 2023 08:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681808345
