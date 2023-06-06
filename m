Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5BB2DBDB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4D7C4339E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686067325;
	bh=bq8ZFW9idimMYm8aWf8bacpy2qg3vdPJ3JV8dyhSWlA=;
	h=To:Subject:From:Date:From;
	b=nd7MGmTABjACELw33IX4j1JT0ELZOq2J5FBEKELDWRlhG6jzWfWeQwHWBrriHoUDV
	 +z9KlgBPVnHsMAyU3YNEj7AJM4REubN16cX3AUyfrshO4NZaagaYcNTWG7VJhStLcT
	 MVGgHypjTXv+JHPd2ShXSeu5g9Yd+NLB8VQWJs6RC02clfApmz1HCpk0sGkb9Me1Go
	 xTGMF88tt2T4IrZnA7fJXUbfwCWuJ50QRQZhYfrM5k0rml3yHoL/5r/bF25vDsaWZj
	 PYhBaheNiHORQzEUhwiAP04cbN26B5q/bIR+j4IbPHKK0pBg72cKg1YoNJYuvZSBcb
	 2j4pTiNCWDASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC32BC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606732576.15240.15775485389597348202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109b6f04325f8d3dd7a0b8ff4e7eba7da944c77eb489e06f84ec02b4e18f3cd5
Date: Tue, 06 Jun 2023 16:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686067325
