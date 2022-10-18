Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F6F4C7C
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA51C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666105853;
	bh=TKXQHZSjmqykfg3aMe/eJ6WJEc5gLmLP7Wcaab8lrMM=;
	h=To:Subject:From:Date:From;
	b=mgOyWtn+WLGBAM0niMeoGgsDRq20MCDXvPze6xCUPTC5AyIPiJh8vDPyrQWQVy20H
	 C4ehmNdPUVw8cKSnRATmSgUICmAEcV+i7ZqOYTQ/xn/QfAb2zpDOlowTkQREPvUq1b
	 3vjmrl9epvkCYrzQK079gi5S0yLFn2ENqB0/rvgIbG05ZDgjpbuUanWsV+Hqqyt8WX
	 UouYObtQ/Gs8TrfaoupclrE1baR3onYRSGLJXtz1qRhahVCtkqPWBFLbspcuHyeJN9
	 k95/4isjfoJ+wNR6UMmktqtB40HaAEnvCyyfPmkfc79B24sUL/6cG4ItfcIcoQgdVG
	 MvUFjjheqM9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5395CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610585333.18860.2067397108515348308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b6216d79ed33e1cb6735e7dfae15131b54bceaf2b6130432c5b95989a931dc
Date: Tue, 18 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666105853
