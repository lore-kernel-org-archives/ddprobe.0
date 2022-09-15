Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20D418F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA2BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663259453;
	bh=FTND6Da1EqMVQ9lmmieiqxMwSQDzZbPObTC3B0vcZow=;
	h=To:Subject:From:Date:From;
	b=qDUje51iY/Hx05R9uKBul2fd7jI2/u2///xbVRT7a2Vj7vqVlaSxISeO6vLfhyp3B
	 qGg91ibdOAezgbgNuo+zhd8sHx8c7x66QNn6ElkxHfWFMTGXCqnpqBEB32QyKGWOAD
	 8Oe90ahsBbqnJrckxyXbiAdUYLYYSvVYSOhfkKciWh5tAJVoISxN+MJe7iITdiUzda
	 3odtzCAKCA6yS37MUTVAtBuO5rkKuVW9zWEF6mulhSNYcdcHrya5Chs5roYUsLVLcT
	 wp5tzEwCgjeCRSo9rEBsdvqpNaJ6Pq8dyxYxID0YmKdkkhQrg7QI4ShD/Na2yRakiM
	 Ynhsjw55IeFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AFAC6FA89
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325945333.15173.13031090143825178689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6894f52e6ffea664416b880f00435b85c1316ca788530acc10d2be3be22054b
Date: Thu, 15 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663259453
