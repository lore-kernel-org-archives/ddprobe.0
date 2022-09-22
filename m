Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4F12CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC1BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663874453;
	bh=pIQ1Cs1DxTbcnpeE0fVHTsZoQwohjrffJVRbLqEBa/0=;
	h=To:Subject:From:Date:From;
	b=Llo/EBQtzo/YoTNFi97JQRTT1uWuqdvr7sUoiOpG01YZVKDi3I4Q1UflO2I9IpY2Y
	 jVDFfImv4d7Rn03wUOeCkAZbChLUi0bsUTJx166nHd+XXfI0C3tf25wbWO8NWhybue
	 d8s0IpinPkRmgd1mG6X1XjXAvchCAhJ/A8RwlsuvQZCiRVogg5ti0q4VNq6tOOAsLb
	 ecQJlNPIHwTzwzccI0VjP/doeIE+HgrN0UAlhEY4gjF5hg6VdkvtTodbYF9TQOGC8g
	 YVCiDH9nAZaS4LFK0vZATjY1RWPR9+0poiyH97o4hzKTVwJ3VTOr/1m03S/3f0uPnd
	 cb77g47LRF1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56046C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387445334.19725.7747839818685197541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c8e0af7f19321aaf4eb831856a305469b64aa9a65e72b09a66b0bf8bad9b70
Date: Thu, 22 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663874453
