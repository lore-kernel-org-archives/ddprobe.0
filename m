Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA732102
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB912C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679923386;
	bh=eAsHTHEqLaaRBG5+29vCISGHxNNzAdrJHzbPoeny0OM=;
	h=To:Subject:From:Date:From;
	b=DEAIC3dFTQnJxTcoYLkvQF6XzYnQOuzu+2zigjyoIpF0K8ftlxJH0O7D8ajzZxMGP
	 AzmGmjFi+7jAwX3t+9W4fJOPcbPWHIuPgIaRgQqHWIP6TdBxdfx0r1DewBjnk4Tvkf
	 wrCqCZQ+yOftGIFtfVs+anHYKBoE76Xk2jNhtmAty09f+NvTOEk6EtpiXOlcV2z8jU
	 3IMBydCWsxb1KluZgxC47WE+lLPZZRU2K4tfa2NnOHaT1W9CSi9WlX1eKIpeyOkca3
	 1HLa4C2FxEcoE8XutM3esTJ898W5l11/2c9hTidb1IH/60H01fp/15Y/Xlj+mW+e0C
	 bkedb0rrMJDeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAECDC761A6
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992338582.21899.4308339635173712695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a447b48b43a721582c0f525712935477322f1d43daa14e867f42eed89928c82
Date: Mon, 27 Mar 2023 13:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679923385
