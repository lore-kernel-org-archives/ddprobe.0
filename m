Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951A217F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2351C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688962629;
	bh=8MV1EGnYQ07gqa7MBtW2mnNWm/PomAGGDGmvBeLU+tU=;
	h=To:Subject:From:Date:From;
	b=D0TJEWuhqFV0oX0+/5jvMTnfuZ3wmQEnA6bQQEzS8GAtZMkDTWjcCpjVhVBcM1W8m
	 JCHynMRmwjM9Qi+w140HZDEJRjFj7Bf5CApPAMBjaklLA/Ny06DMZoHo4MGid2izyd
	 dlMK7Iksu6k0u3Dl3KIpP66jmqiV21DT9JrBYYMWXnMaLKOcQ3jy8iRVr5v6qJZohB
	 gvmf9FKeszF5XaG3JT9KTJ9VLINOGj40Vf9Ywm7ZdpgYMZ61GUIGDseN8oj7CXJXSs
	 nVunq5NQwnqrZMO1p9MFGpYILLytkgVgYBMvn3IQzqLeuBsS+4wak7sj+5qznBtzYw
	 8m+DBY2oyJzkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27F5EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896262885.17054.2586329926077589610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9f7b1c86657ea2a8bdb6cd77555d1d00f58f43930287ce94ce95d2cb60339c
Date: Mon, 10 Jul 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688962628
