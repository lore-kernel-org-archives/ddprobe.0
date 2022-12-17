Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1558C08
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F646C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671311487;
	bh=ZhCpWvX8dieGJjAnsCh4d45W4vKf/x8kFO+A3LxSeS8=;
	h=To:Subject:From:Date:From;
	b=fLOzP6Na8JFblUt9MVZ92HDahodQPODOqBEQbvGLtcaPrfwTTZ+TkLIN2hY8V81FK
	 EXUavUkbrMIILXjUgwMH3rggVwlPf7KaYFqtQ/JAb4hTT/4VjnWmu01jDw2AzKd3M7
	 0paDgi/KMI3jgEy+BreYhhS+xUDuRzSD2D9AR5ZZUrDx9OzDrFVAVbYC2VCsU5Hfho
	 0D6ccgoLI9Wwf3Yo1NGtuHEFLpoZEeM1P3nWUXUcWPPGrEFvrDf8xcDgTdaLbCsM/V
	 BKBO8E/qJHVXqqHlqXfAIGIVoX3eutk9zNY14FmnSq22u+HBiwK6NyscajAADRUjyM
	 amX8H+AFBPL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D90C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131148740.21113.11620155300661673488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73987264c776dadce9d50321560ba4785dc3317ebe16581bea98fd3a06ff2451
Date: Sat, 17 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671311487
