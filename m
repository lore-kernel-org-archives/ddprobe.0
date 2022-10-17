Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA89B33CF
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED39C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666021853;
	bh=dDR2aeCkEx+lnOxurPHrUcNbEdFRnU8PKPcTprPcFcY=;
	h=To:Subject:From:Date:From;
	b=ZfpUi1l/XWR+N6mOkzq6CbNbczD577zEfEM5SVMv6H1Orx8JnsunTBb6Raig9Ju5q
	 YP3vn9J8DIaylI+96Lq3eJpCp026zkcf7WK5zaWpyPr7dOrOJsmdDhl0RS2jzPtI9E
	 Y3ZJt8bqLHgH/zVE9bxp5MoY07Yw8JdmMVVUxQhi1tNN7O8K0XuK37Mszpba6cy/rX
	 Eo/PJQ5YcG/UgAZnkNQH0TKgS0wTTGp3JyVGt/1YMDI2Su9IlHFTynXGrKXvy37CGO
	 yrfVjYEFW7//8NKEJHNh9ZLODMRWVPkJ5MzYFmht1vzIeI+4Y4DqU09KGss0UAUa1z
	 EHvIGNXB2ZNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B97C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602185335.12475.12412114354159034265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baddb3162af29ff703ee439004a2098f444e9d5c66b34c76ab41965784b1b9b
Date: Mon, 17 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666021853
