Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB99E15B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E41C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669336854;
	bh=TjZaTqBneFZaJOLgt/81l440nVXePPD31Jfd5nzTLs0=;
	h=To:Subject:From:Date:From;
	b=Nyq1rbrQ0gaZuMZ5yOUGwXFru6zPxrFNqrvnkEmrBgdE1onnntZWgVVkpGHGrIi0w
	 rlv5dJqunX08BrovquGtAKrHQQA4RuGDAU8gOCyFr2h1EWr+2ItyQSSUY0aGZueko8
	 LipRoa8SCF6ArNEBfoHwPtkqKYeth9okbS4CF+3FPVa2y3EdvAD8qe0GCPc3gMnGnj
	 PQFAVB91p67XCUwAH39KdzU28j1MjFciDokpK3oil+YAEedyGoQXD7nEtd5Dfpeq37
	 PqGBB61hWWSBH+qDuiAcSbNuw8Sa2kryLcVfEtEsogXJlFiSYhLi0NgquRdVCwTjgW
	 a40yk9Ao1FYpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A94C43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933685433.22282.15268083923778911134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dbf786fd2391f5f541e1f800fabf68b2ae7a0f85872722c017ffecdc3211b3
Date: Fri, 25 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669336854
