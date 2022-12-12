Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9766FC6
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D29FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670876487;
	bh=QHU+9Hcj6oP/gMn/bvGupEQeAPLAtK5LlzCfXj/hWhE=;
	h=To:Subject:From:Date:From;
	b=KjvuNc9VJH90MdCk3GRCUWePZIwRB2MfBgYIvy9PZMRpPdvoB+DRjDM8GMwzH1ME5
	 ANC3TSKRP3oR+TxUD7+hIyY12BTRJZxgGXtc/wMmAT0VLSqfNXJTHiscGiP+oUhJLm
	 iKqqC6pMmRoDS47VH9viZoLrHd3ECFHkyQzq+B+NoTZ1FrvyQOEn8kYUzH/VeXsAQx
	 +3mmNm/maNsERfEAze26XshiCc4aEgUQRdc5bB7Vvw59AN7M2IIm8+K+L7C+aYr2hA
	 llPevRtsb+Vm/rlkf3Ng0YKnrIFqoVrijnyT3q54HlXPsfXsFCfCXO0PvtWOq8Sqif
	 RpnaT3SER4YlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63168C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087648739.6342.16937114427812026767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5e723144c54a476ba132fcd22bf0c11bc787d09391f27a09179269dedff419
Date: Mon, 12 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670876487
