Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DBE1DDC1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA445C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686939548;
	bh=d+CRjxiVBT5rUNF1ENrpSAPKqkIlXB4Qml8UmUo4zWE=;
	h=To:Subject:From:Date:From;
	b=PskAkREBFW/CuL4HyV2V4LqN1DVZvUf6seU/F2E/WFlQaXg6TJE68jLDA2d0uRR75
	 7P9enNOycOw/NHUIJhGI+GHB/eiOZ0UGqqEa5vqelNh43XiAC2zBOktymth/QCHzA3
	 Ghr/vupF/44HHCtYOnkf0jCAo6k3U9CnJldDpBgemWIR7i1R4yAwNXm/T292xJKzRD
	 WO/DbT1oGNcm24cSRo9+jxUoOHC3ZqUcqTVgA4VvyGvuWW4qmU84M//KFupnNRfSJ1
	 HPjpU3Y3vGT+Kf3v8RT/Vyj0ERzKViC9HP7WMPoNW/UYHenC/60Jh0IrDCuZ7fWQAF
	 SisLFP5Uhloog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB74BEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693954875.16731.15897386109705629989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11a469d08af05e4b1eb40679caf818b5ea2f689e55dd507a4b3d9f40e9b1d36
Date: Fri, 16 Jun 2023 18:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686939548
