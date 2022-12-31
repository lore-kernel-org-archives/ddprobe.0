Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143C92C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1267C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672515687;
	bh=fkxKfTm9cR1IaPOkjQZ1O+TFgvSbGx0V+Bsz8pJcNNc=;
	h=To:Subject:From:Date:From;
	b=sfPXuIoYWeTcAjUB93VabIFv9l9GgTsrIHzt1awZyjt/hsv5jDiK9lKdXo3Ypy+wd
	 HBlg2POwiAs80q2USF9VPxGkAKcTdEkPMSfcDcqpPWL56dtYsRWHIoJRayrlGSG6uU
	 u42KiSQ2jFRJ7Wna7eHTVO/xbq+RQrcQDzjaFCVUFP6Cm7tPax/wtFy4XxxutRsCeD
	 HNJ6LBAsd1ADrSCXvICMk09zjdmY0O1ijCMpcRiUFU23GeemFkgE/Yj8D/Rzxa5OYG
	 C/lBNu7iYBS/+dnX9WLZZAOYX67ERdWczu/DP+K4rFKqYuTnN+8Xj8bR+BTTyDDrMW
	 W1rO6jjoCGjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C34C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251568750.22778.4033950193933845335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f472947d063000aef1989918194ded3a4f0dc7611666f038f1fb8087fc462fb4
Date: Sat, 31 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672515687
