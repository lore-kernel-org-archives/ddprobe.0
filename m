Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6335779DE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD03EC433C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688926628;
	bh=ct1WxzRPEHk0iGn7f/+Sjn5G9hHt2WVjO8K49C/6Lhg=;
	h=To:Subject:From:Date:From;
	b=DAiWYpfXRhFLovdGxupDjFdgcyJ/E3wBwasvOE5MF4L5t5xodlYXg0FIZqEAwnkOv
	 gh/IjRF703CVhcwNTkKykaf3939yDJI1fXG1+2a47DAEP15Ynak3YeFt6XvdDsQtm2
	 QzskJIL95Oh/6asjRWdpwdHqxLbTGXlwOqdZ/dlc3ZkVutvo3IBkosZjjXDo9fezjR
	 Yhh1+0QRyruQMcleIooDzDbddVoFZ8gx8ns+W+KmGFfxHQE7w39nd9TTmjmoUk3V+r
	 V5NR7ssznnYF1zusNkwO8SyqtDmlfFPJt1UKjISgrTOzTLRlcWWnH6Q9I8m8VlFXGb
	 8KyU36HqULp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE62CEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892662867.8845.11987019802241254188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9fd6a428c936e001c3720bbf528056a6b9f3c8216647c9c98a57f5574b975e
Date: Sun, 09 Jul 2023 18:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688926628
