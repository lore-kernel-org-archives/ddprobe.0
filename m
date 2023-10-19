Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11007354F2
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY7LCwxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF03C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697752096;
	bh=QtcaQUKwmKZ46upCpx1YpmeBDIN5z9Mx1oZk43D+CGo=;
	h=To:Subject:From:Date:From;
	b=MY7LCwxkolOp6U8Q+7jU4rcYYXBURN7KqONC3W7u0jCcsskz+q0doI1/MEZUnVjUV
	 81MTibVVdB+B0W5T6IpVxgEKHVt4IwZeVqAkh/MiW4+dIYy2HDyMhrrygE4Uzz6mo4
	 TxsoSQxM6D1sevEfQO75iEBjc6XhCm4m+7g0pNoj34h/hidqfmfFbJZ2yPUknLzi/O
	 MPi8hj94yyWC6DqljwFirrz9qK+sz4hUc0KuvWxiczPSHgC//ShC71MfpWB6fIUwL5
	 2kfGXVsUJKX6pd/Yj6BIzxqOiHy4P3R+ppqVK9Mu/KV1477ew/kvlXGFd5gYFdIrzV
	 JEUfuVVmGaAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A233C001DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775209642.3359.17498999474966942992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575516c1064297240b508a3307b51bb92aea5630081ef31ee6e80b33ed03710a
Date: Thu, 19 Oct 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697752096
