Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A02621
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33B9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687486988;
	bh=Xv+pOpgJlj0Yf6Byvsh5118b3FrXsHRgRGR5X19KtZA=;
	h=To:Subject:From:Date:From;
	b=da5dbTxyWuRaCAyKRVSrMTZuDCGo3guNCnaavogwttoAMEmmT8kxSnkmIa8xVh5NE
	 /EvYU7rs4S/VbCFQv7DI68bNKqVdWOMaAlHQMuJftA9370lyWWEcsfmvVTgduLiU2J
	 rOHqZnLzrLcWZgxaNzsjsxmaHAWWCRutbswMRMmUSfEiGWs+aTM+XLuucaeduU+vup
	 pVieT+h+quqZ6IsZltrPcYMJah8fnG6gLn4WlDgNOFoZQ7kbhD57peGx97hMVxqU6g
	 UA0ujGIeNOZlMUW0ojj38SWCg+xiqT/q1KetU7EDdK2wTq/RgKkuZbq3MWNKYqtTd0
	 J1+AtiVyiAM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F8AEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168748698869.3731.8903125717913378935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f236ca2f379b28a1711698a5be134c4897f58083c6ecc89541ab413412d45c59
Date: Fri, 23 Jun 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687486988
