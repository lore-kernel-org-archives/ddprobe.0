Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A61FB1
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8228C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684925705;
	bh=rOli1TNt9NjU2/GLE3T+BhZgEYlKX2LhdupZLftuQ08=;
	h=To:Subject:From:Date:From;
	b=q7tyHlWZ1Q+cPTmaQ2GTos47DA3S33OehT+PAhTWmV1/oHZrdDpA0OpLP60UYPILP
	 wjsF9jyGPVyOYsCo3AopM8B5aCJtjaocdE1i/OT20PDEquV969S3P8MsKHYcHe7pSQ
	 EljqGESWSLufG6+PmLCXpdtrU238BrNIsvPdNklx4M77oxuOkZGEoAlINEa5ZneWb5
	 EWcZaDyTxPMw1+sevBB1BFNOwiLSqjgBBTD4ZkTa7V4rxl053OhjVry5tuo+Gega6U
	 I6zwubYZRo9/6iwnbZuTSCGbsuGZ0GK2R+r9x6xN2S2bve2LfVtI+BfpTxjlLJphK0
	 EfduUrCGY9Ypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA07AC7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168492570575.14528.12294456440211575799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2a319dc1ddf06a20aac4e057f2a093413259a0cfc53f792db29c98215fc148
Date: Wed, 24 May 2023 10:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684925705
