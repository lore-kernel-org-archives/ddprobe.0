Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B00395
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE429C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674336725;
	bh=7TGKWPGL9saQ8qrej/gwVzq8UXTW2y2h4baUg7FMzO4=;
	h=To:Subject:From:Date:From;
	b=Yf8EZoJvLEtXwhhPdHdIkVCz7Jgu0kllvNVGhAer9vLCl0plRdktzec52SIJDyZH0
	 nmLrarUR2NYzmIHOiHpfRH+tAmUx5SS6G5C+B/kD/cxcS+lbbGd2SXZrTw2KrEnjhR
	 YN08mesyn6wBtUUE2cnNHd25/wwQnbbQfwB7d0aSAHxtEVKsgl9fXGioQFf8F+4Gyn
	 ubMY88/htVCJOObRZHaezQYMcob73VUPWFmVLcqHdcjoNK3rtVOabh1MT7EXKtDx/7
	 sFiyB/jFG6AOsznidUV+SohwPrnJb+DfHa5AXL1CFUHshW9tQzV+wOiSxEGphfgVCq
	 jPlpl7mcc6u2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E36C54E94
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 21:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433672578.22827.13725140316801427749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701331f4b3ee5183f584b38554d5a26f2c7c9ed1a5aac5b8de2dcb48e79c62a8
Date: Sat, 21 Jan 2023 21:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674336725
