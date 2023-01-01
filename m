Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D767D2F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8783CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672577487;
	bh=VV/sJ0eDFdjAWv7zwZSg9N3yu70WZpUWpef6TbJiScw=;
	h=To:Subject:From:Date:From;
	b=tS+UB7BJfR+ygca0hKKrbnxKM6AiuqWn4vZMYeY2w73n3gDyLt67ZiNMOrOSwfoZM
	 +4T0BoljTJoFu8458Vt+oL9iNvebe4fzXrzlXcU+b4hOfxCAS3Glk3S1Yf7Ws4p3Pq
	 aFa+1ztcafIUAOH8hbCF+h9t0UK9Lz8kqMtIIeR9XVSQBaHvwbbSTbAClDGKAe9ftW
	 f71m8CBvdal7WMehV8oBuYFDdZxDV1+2ysKj4sY2tEVnl7dv1wumiGVeG7eNpjjXrI
	 0ELdHHfHaq+gJ0tmCPg8lORITXtESg4fO3OUJsiG5r1ex9Nl2oCQiVLd4YLMzfURQF
	 qKceBHIOcE0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B847C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257748743.8687.338398628344342503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25cfbe154c14a545e0420a7e9fffda78c350857d93cbb090268444d30421902f
Date: Sun, 01 Jan 2023 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672577487
