Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AEAA48
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3EDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663572653;
	bh=RxwdLJ9jwxjKzXnVmYmCQEqcaycJw4gNCxoH0wptY6U=;
	h=To:Subject:From:Date:From;
	b=KwCY3oyRNL+4rd0mKP1cxmCHEyPyY+WTsOiNZ7rW2rkpz0hgqGO8wsYVO6Lnnl+3J
	 h9mIH0tD9XDyt1I/zj64M0RZCE/xLlNmhtc+4jl/aTeyKRmTdMTxKctIwC0iSnwHkF
	 Qar5DJfo5wNWgN397ye+F7MCUMGfKCwH0PgZuXzdZRFZmt52tO98JI7UVOl1Qc8Nja
	 YiIrFN0ZDwh9OqreilkfNQ+rmwW2tkSl/8j+6V13nHd5QWFWkftgzxoUwtZt0c6T+9
	 bVyrHAJAaBTY2k4DYCamOCLOIRazhdIwHw/6QXjNs7CewyyXLbky4OdFHyumMHgvvw
	 FDeuZgoTPOJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CDAC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357265332.5925.232971829625779255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2c80fd5048216783b2d1d5a86432ecd7c05d2028dc8385ba13e997b81eae64
Date: Mon, 19 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663572653
