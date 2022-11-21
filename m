Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47DD63D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6DAC433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669048854;
	bh=advlKsU8b26UgfSIeAZFBRunf1qYNkQobJ+YaAQDizg=;
	h=To:Subject:From:Date:From;
	b=N+aifUmtgm/ItOLPASfDq8s4FMNyN/E63kXiteTOz2YlRIgI1QThWmBIDA/mZJD4F
	 5nb+tptw4XjmDzJ0DmY2OOut6uLRHKimLwUOtAu/e+J6uiMrEfaY2LBn0m8c3oXNmF
	 oVvhfV2gjqge46CFrIi9hqwJf9hpBhofX5SkQRKkcJUk+7QKk6jGYE/hSO2fyIP/Uz
	 V67/APRmo2P4qeF//95y8kU5JO2H4M+duysz2X2S7sIjDf3kuLJouDlM+ro0xp3xfB
	 TPXFMGZD5aY+QzXXolXpunxInywpA4Cy2IiHv3Cdq70xAZcg8O4/UeWKYXQieR6xXd
	 TEXtXe/ny7PbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5509AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904885433.22186.3301041807168829496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073b0b5edb8201b6b382d57561163dcf2941149f9819c41854a0970e96ae29b1
Date: Mon, 21 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669048854
