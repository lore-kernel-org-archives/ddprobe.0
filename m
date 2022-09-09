Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D438E622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81656C433B5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662688853;
	bh=TFnI5UsBDI+DdKJ79EPc04LZSdX554kQ227xYOHY5gQ=;
	h=To:Subject:From:Date:From;
	b=XQdHT6Um5MyewVYtoGXq1cfiQ6x7c3NVo8oUuWGr6fM05tPbM+si7ldW7y6h1WwwR
	 AD20v2jvWYDjXa7LFhwHr3sSZXLSOLUz2lj6SIUrjUH8WpKpXRyWlhZTvyifKtRkLX
	 tKMXqxwGiW0woIxdaU44UIbIFHRjiRfHASB4FRJ2btiDIESIrbVSuogRf1AON+jO5K
	 Xo3Azzx/ObIeyBdmKPm7H6DYRJa4eNVhaTUrInyXS8Me05erHYs5jfvteuC+x1+N25
	 5fb2M0IunLFcy3RkHTr084W+6SwtH8DkruvSRMNwY1xh0D3EuYBnfKJ7CofZy4kn4s
	 d85Ur9ZnhA8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB13ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268885336.5151.7021400570263378146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2719b50f44ede34f4eb911cf137d90e0d6dfef157ca38ed6f3cfcf86bfddb5a
Date: Fri, 09 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662688853
