Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9C510F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710F5C433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662094853;
	bh=+f7CTLkzVRAx35UNS94FkmggQAWa5eaEnm0OYct8Xrs=;
	h=To:Subject:From:Date:From;
	b=XY2VgayqGD19zmPEU80fJZ7K/nxJ/5wsVEtfaxaBlFYtZCfh+CpfHJHjoO6PDeMlZ
	 zJf+QJxFrHu59Z+I4IDQgoRwhm2mjQNdCzHXV7N4tqfWvJ+sz4ddacC7stIvWQykbs
	 RAFdRctEGtYwWMNt2wzzPDBm04jh2cnlXXMvtnxWQDn7s9GRbZRS0q6oF1LLnCfkN9
	 ssuefrzdx1vFR8QFKD6TR6WzEOFPTdZZbR6iS2Z2qpIofgv9EZ78c1qV2gDhow4MZy
	 /d8792WvcD97e1GoW/VYEhYr1ZNoQI5S0oRDXxXn4H1pqyJ/GGVOeLh+5PIjPS866k
	 CI1MoBBbcvc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53219C6FA81
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209485333.11086.5876342240360808662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd278cc4feb517642fd20595f7dd6bef7056fdba09d2b04271cd63242c97adba
Date: Fri, 02 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662094853
