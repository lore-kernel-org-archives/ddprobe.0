Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B945ECB
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CF4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683027365;
	bh=VslCPm1L15SgSMSTsYf/M0VerYNNny+3sv2U8TUTVqg=;
	h=To:Subject:From:Date:From;
	b=PkxaUwapDmW8qfWhARoYUUFFrIjlO83ejQZuAOrjLO1ndbAnhSbrq8V4sqgK2bJGB
	 g4nRXPSxPAMg8yWAh+LrsVnkx04efln17yW9MOXZEfsSWx1ACngMMylynT+ieg8l3n
	 BCQWv2HLz6QacCqXBd69KpTyPSN2zDxZNAwNMQT3aNKj/bMxKgePNr6qqWJGiZhYAx
	 q7EmiVe+a70uTxMkZD44cLcbDarXalTzT/eDm9/AlUBQ0FhwlAPv9rb4AFYdOJIm1e
	 uKgFPCi1/GPGqb7regtMnQysT97TAtdsoM4xUPhIIeGmOw+7K6ATO29p8M+G17d+9I
	 baE/nDvAJJLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD50AC77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302736576.27416.12675494080129861559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d698c1c6f42114d8f185f4e1fd62a9e046bdbedd354dd45e01ef1c548274c80
Date: Tue, 02 May 2023 11:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683027365
