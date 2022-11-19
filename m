Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55A5364
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC44C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668839454;
	bh=pqzpx36aAbyFxQb4FLV+mASCVnyj/37fr2sljwdY914=;
	h=To:Subject:From:Date:From;
	b=XZXUWEp9ZYumT3YGD3nTJTgC21UXd+ubKAjSlhJzp8HYEC8HFIgwox6LuWnfPdP+W
	 s+zNi0rHAya6El+P23AxlQV8PED7S8Y8FUHHM+3WYV5eVbJkaTfcY2CBlItTlSMemP
	 Sb7X4fgr2QsXwOZadzeUjzUSJQuz9jbhyhvJbzz+fcTZ+ePBCJ5XVAdrUHH5i/FXGb
	 5fGu6+hxg7r9HjcvwQMcSRHyASidpamZB0OdiDC6Jizu/Yne2F+mkqTpDy2t69TthN
	 sIHLSpN1Gtbu1kToPV6/8LCrX7lyxBw5DNBVsXTsZaTOgAFn43L0zSUOs46XKmOZvo
	 W1MgafcTwz6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E86FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883945434.30574.7926212376770415677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbda60202424599bffc56beca44b0d42612c042c6859380ee74d86a55e8ec5a0
Date: Sat, 19 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668839454
