Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8F97C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7819AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667685054;
	bh=Qjm10P5CbqiLTJBxIL81AD/eI5lPnR54t6ZpusCSFYU=;
	h=To:Subject:From:Date:From;
	b=q3dDJQMA7eMQ6f1BtYKekKxYM6gOySVNQng3nmxza+2prghptgoUUbt8o79A7AtBy
	 yKfOCTz2sT1UqyaXkZ1lAbs9Cz96AuzkLlyNHzF5lYA/4vKs2P6u8lm/wJKUj+OKFR
	 TcFacQIRkbHrn0fOmpmYm8wj91WOfJbhuurR+yp9jGw3x1265g3bWH9KLg8ZldfuBG
	 DSKlrFFl7zZjqJHduD8nb/POcPrDr8nqZ/J2dOIqGW/TWzjIFtKTqRoj+CCSbclcgY
	 FcX6Ybs+3XCjJBSiDkTBd7a/y0cWDK6JR23gUV5kH2ZREcqzO3l0vwtxL51LyfpREc
	 lhxOa8DF6Steg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5881DC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768505435.15715.5219689731288996667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1e9f3cf49f3b150f75177efb9effe0a73fb068db04fade7fdb69b603572db4
Date: Sat, 05 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667685054
