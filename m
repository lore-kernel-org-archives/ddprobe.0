Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7948C13064
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD37C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687884789;
	bh=WnV+3EqMIWLRkpalWWmMbRFtIOk9EPVtMuGOLz/tpbw=;
	h=To:Subject:From:Date:From;
	b=KFXaRM6q2vndEnF8e+ytszLTA5Pz+qz8VGftHi1sA0cq1uaQYN36TxMWXyiA0xKId
	 zb9O+qAaisvXfhwmSNG/SH5IlN2pKdJ3hcjyl7xuq1DviPI4/J+UQHw6QOJPGgBByc
	 cTrzlDszjO+j/BkjpjMRyB1XxJM5CZSExVoXmJAScMEsxXCNIyUyH0asyTKNRYYe4f
	 pTlWWSjL7hMwTSTw4jTdGups93igsjTNhiHLGQQaCHJKmC9GSHaMNEuHvlIoTlgI5q
	 O0nxMogbPlsefSqQZ2phuMNgI9gvCUIO/+cnh0Lv2holeJw1au04s+UcTuFcXvC8XB
	 c1AjvPydXKgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F1CEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788478880.8998.11600679763799258960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aefcacde8b46f41a49670608f754f8f25285be2c29eb5f2ccc476523c220a6e
Date: Tue, 27 Jun 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687884788
