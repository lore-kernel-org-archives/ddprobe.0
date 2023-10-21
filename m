Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3297EA
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHSMB2aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DA8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697852296;
	bh=b8rIvWst+cVz5NOxx8sFZ1oYV+3eI7EOKbSBRcHRN+s=;
	h=To:Subject:From:Date:From;
	b=VHSMB2aj9mwEzEqmQV/xVgBexgbviJ1eLRCAlvVclQGXv+ijUtmUPjI94ECc9FXXt
	 pjfzqgKNVszM3EvhVO51vqpFnIhUYeZwjQ5n6fKtNKOTILiYCvQYuN/XbvTGUuXXnl
	 GV3jlsfB8HOnPQFJMFyLIfzb3HzLquBW0vGSmVZX3ZXpAewaLDJgBiRb8PBbYLmg8Z
	 j58cKb0i8xeuMkyIoVFjNNjI1WVnCfrCsLKDbV84wdZnqGlGI+wv6KyXd411DKd4fN
	 IrfDkp92Om3o+K/FIydXLQbcULOa0fEzyS2YVCcLFFxwtJZ9FF/Ax4fQW7sPBY2IBv
	 jQIagmKcS6k8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67124C001DF
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169785229640.19436.5548650657985644366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d060ad69542f572ce040a4560ff59d4d6e357155867307acc6760ee0487ebb17
Date: Sat, 21 Oct 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697852296
