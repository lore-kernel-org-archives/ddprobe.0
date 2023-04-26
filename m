Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491D863D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D5AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682534825;
	bh=ynodgQoCIlca97OCRhykUI2Ua/JAf5g7ZVcnnej+Lec=;
	h=To:Subject:From:Date:From;
	b=Xw/HUMySLe8FBr+OzKCA3j1EszBDLMrvQaU5vIO18hxMXzo9Iq2Nt8UP3IFTe3jDA
	 1140M9APLTCyAJJ5Y3qqSXZE+9g0hGrxsoHRl2Fk5H7+XAuqDsYNnaymY3ET0M3gNQ
	 y6OIUH3O2UFG390e4asuWZHQK2bUs1PHsbTRyvvfDbmLM6FDZiz3ZKuwsrnvBb+f3c
	 NwDyFYcMEUVcC8viHjPRTo5k9Icu4pcDD2lvVlStVwKOX1jd9ruNjo9OBa9kxk3BB/
	 EB8nVe4F2YeV+fefcyk+DwRgF8VU1RQBtSAIsCHUdv8eYvPYzSzCcI0MbWJ+lagv74
	 16aqWjsiu0FOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CFEC77B78
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253482580.11508.11270959881574813850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be80bf6cf3a6b7823e2242ae05f23ecac56701545864b740fb08ed4ad8f09c13
Date: Wed, 26 Apr 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682534825
