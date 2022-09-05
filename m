Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7D47E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D718C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662420053;
	bh=vYdhrCoCDAVwu0ZenhQGXpiw7iPrtNRdZDdKW/xSE8Y=;
	h=To:Subject:From:Date:From;
	b=Q5ke7jjdAkt1tyJuAIIxpBJeKozcFGvzk7Y1i4mqNtCRFuEjvJTZIaD9BDSgTm2q6
	 pJDnLr7hewu0k1/ggi4LGA8KktnT3LQnvA8Q2VGFH2jQlqFCtlsRQoIg7nvfA+Kf0G
	 hWoCIZnrhbKoq4m/nwyR1I8Ybu58zMf29BBqsyVqnxNjucLZvvEOTUiggcf1EOh9b8
	 ksfsUgNxHzhBN55eokq5ZoxkVWgUhfFLTGPJzWx9aOo1JisMnzhtD/IlCYU6+1xpUf
	 2OgX82WZQBvTZcSjgZ1aMSe8caoawY/qvU32n/7MIWnhFC+ga2NJMOMIVThYOpeZ4L
	 Yo8rMNwpPqXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4C8ECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242005331.3038.5723431460062787654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cb46f40e3a9cc1b9bd88425c910146b15a50b3a9bed338d31c7ad4ad3a32a9
Date: Mon, 05 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662420053
