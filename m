Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67064328AE
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA193C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695907568;
	bh=th4WinSPRLuMm02hXDkbS7DP0BlqcrxdfqAmMfqi3Gc=;
	h=To:Subject:From:Date:From;
	b=AOLILo+AOfq0IGeONw2nfKm02APzBQF7JPPtt412z66Uzv13duM+LPcIQf6aomOc+
	 03xdukL3Mi1MLjWaMGzrALap+6PEbYE4sQDVLQyQb+EXDtUR9tNn7t8X/mswowWh/z
	 9IE/B4ec/sowDUQsqF+7pboitEsqZVk2WJ/uos/e+WkFQ/N91OOVy1+kU4O5Iezai4
	 x2SFo7W9ANK6KUEdInFk1TT+q92qCYAW83fKs/wzcuk7SRccPlGCPYnxmvPwMqsSQS
	 snDuoUab+Ey7hnZfnZ/Rjda9WN0GBWBUFaYDHub0jBtmVsvRa+rEUlGqAm2jih9cZf
	 e5ExLgrY+X3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B09E732D0
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169590756873.4752.16125232093604349857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5e3095e334e2e69a9758cb2c1e9f5485b7143612263cc97d2a48fca947d010
Date: Thu, 28 Sep 2023 13:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695907568
