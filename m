Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A2D28E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DC8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688942828;
	bh=Y2JbtmldRcGEAX3A9tprkfUgmpKRjFUh1m8j7jkKrQM=;
	h=To:Subject:From:Date:From;
	b=oBAM2LeYEm2n3gYVc+EzyYZ+rKV/EXtxzHAc5A7Po+pPdmJOk6J/6c94C9iPt5zxO
	 rTk+idjw4tljmAaNQwmcWW3vEIMsF0KK1FlqWtEuwCibL8q3OnODMh8yu9bRHmMoHm
	 aGErk4tqDfHZroYpAZLNwgF+tDbj7MldakzveMzNT8oaZ7DAp9TJBSdzNsRzOaRJc6
	 DNi7DTx1XdUgOtPjSAwrZfEMXbmm1rJXzYDZYWLIY7PanOdjOnzDqtfc4Q7/xPZhZN
	 miI9fOEJKtrq9oZ0ZKT4Z6Hb7uJaYfMuKY/Z9yTVvcDFjSRDkYazuQOtRmZ511+3pA
	 EX65re/rtNVTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC91FEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894282867.25244.17637592310790942297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888650cc2fd11b0f44599a7b666622beb046b6c5624218ea91044afbc15f6a1b
Date: Sun, 09 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688942828
