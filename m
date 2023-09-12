Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DA58F68
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B1EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694547248;
	bh=5KeYypATup8GU/y6/j8MuW5Cw+vtKtBN39GZxDnyjsU=;
	h=To:Subject:From:Date:From;
	b=J9QsN3xV+ncDNJgZmvMl9QfXipxde4CvG0gg+9QTNbyKtSh5qZdq4y+d91aMBKW+o
	 pDeUiuuURdsvloAyOqBo8IL+Hwam1/6C9tXahLeiXKkN1h1KDt9g8C37DtXICLIgzZ
	 rdCVYvklL9B7KnFObbPZSogEjhIrq3MemVCaT2EZRxCZjDDPDaOODFUShk19ahsE39
	 +R6wF/GbwprrBnVjj9St1HcOXv9ssPL+AzKnsUfbL4vGRA3lgaKPYjagzZjdqqQIDu
	 glmwUAa24kJ0Pfew4e9TqVazuoVdehzuqsof8NFbBH8ak+rr0jUcFFsYUa8sdbkH9f
	 XPxuWrAmrmkNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CA8EE3F0F
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169454724878.23515.7476831875026299004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d561307784a9badb141542b95f661489f965e0e583b70040fad3f12fc23eb3
Date: Tue, 12 Sep 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694547248
