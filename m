Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F3386
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF556C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677382505;
	bh=nJXYJXml9EkwcIdxlAg2yYiWlds5119m3B4MDWBW5V8=;
	h=To:Subject:From:Date:From;
	b=F/S/DNW7Hh1Y7ZaDa1INKXIRQa3Hnb6OLx/DUnofJjZWNE6yTXrjqtFPNcqjpwUAp
	 DTqPtCe/Rm/vi8mX0uqFNjHL8tYUSGp9GtArY1tHwUwOofS5XQRsUSoO6iZtRvd9Iz
	 w7B/lMOALm3G4efBg7r+CyGW9xxOmUOa67g5euy1cFmHrkgy2HrrW1FW+uGeS1XQNU
	 dLl/r2tISW4+3FIfoWU51gYNR+SZNRjheud7oDVKm6E197P9nQcDjsIK5/gERyUzf4
	 tOnrmTbDBNqA3bYzK2GaA66WnXrzRuoPkMSkm5SymQMjZvjlHtheY7CKzG1ZIQdIGB
	 CQ+xU7l1vhDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEC5C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738250576.4252.11421708206693526823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077c60c5603fa86c02891b0753271bd7cbfaccdb7c0757447e4545d7959049a7
Date: Sun, 26 Feb 2023 03:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677382505
