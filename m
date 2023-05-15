Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA9979D4
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 13:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA238C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684159145;
	bh=16pn9KxJKWWw0G3aJNxu6k2wYRYZ5eMxHFwd7R/ON1E=;
	h=To:Subject:From:Date:From;
	b=QIRZqDi472CtOJGpgyecesVQicLbaWsDu09bkKOfUsjyn9icWA89GLhCDedFxvsmv
	 CJ5V6Y3aOaAe5xNV6JDGCZBP7k17Tb9a0IWitNvzDVVsJ4kqbHeywD6W5y91YoeK4x
	 HyJQj8weIKdhf8U+9CgYmcGxEhkEVobX2YGmsiWTR/WB/klVV3RMrcrygZ0hOWWQeZ
	 RzHfM0qn1fYyrfRiiJu8DIjxVAHBej99zAY0WuCZhQSQr540GGymeLZ5GQtSfwx+GC
	 PisU1QS3KpCFdl4/66QREgMt2JFFfhnXJV+00xTo9A6ZElD6AU3B68zQjspO0Oschh
	 RkfxsFXzo/sXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E46C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 13:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168415914578.823.2333942359651603776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d146f180e80a4b83137e7d918748d1072aa7554fcacb940426148d4658e517
Date: Mon, 15 May 2023 13:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684159145
