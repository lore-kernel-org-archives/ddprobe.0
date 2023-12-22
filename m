Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085D99447
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLBMZXiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C58CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703230096;
	bh=jbiZuc+oAPI0ehavXapjq6fbjCLRDvqr7HEEbFfcikE=;
	h=To:Subject:From:Date:From;
	b=RLBMZXiMtO8tznK25IkAi4NRpjJtsqJrReXZ+lH1sdem61VJ9mufi3hrwXnO1EorX
	 sK5nt4RQ7QMZcaVhQPn9njT7efO3uySds802ItMNrxvcS+OjlQkx4gYNm3nxdZZo0B
	 uNqAQt92VhuZb3172abPUIMJ4Hzqz8inwpAmMxtSsD/WHQfXWfUGmZKucoTNn36Udf
	 e8DP/fhzmcMXoqaN07bQw6XULS4/qBquP49OsBaPXwUjvtZ16fCDZoPCu2L1i2HmSV
	 6Tfe+eU6nVG+8zryaAqc/kIM/LWFayHzp7jO7fKggjo0CerGhUojJEy8Stn1n3icdi
	 bptfGkxeDO1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF7BC41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170323009642.4375.14607913062255733439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94b553475350e26a66d84e6dd9db0bee7a6782aae99c389c3eb8f8c358f4389
Date: Fri, 22 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703230096
