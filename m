Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC621101
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93CAC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674706385;
	bh=rGWTqCi+2ooFu8EEbhUt8AmmRRFqnqNOIYWWxv93Qe4=;
	h=To:Subject:From:Date:From;
	b=kXMtYx3Gda3knNRbDpmQqrjnGtQqQr/stWjRpvZ0nFW0maVmHcN3xHwRMRlUqcAKD
	 UYN1M3Je/kG4Er5WKsWqAfbRdJjTMq4nL2zfTDt5oRO2THI/oyTC3Cfvw1nYiasRKi
	 BhPhlKf451Ki9iyLnaWF2Ci5QocQbxJ/p1FtWDkykHayOtPebRgwdfEB3J79QwFIw+
	 mHmXuvvS6toAyxlhQcgKrL962MPsN40oaOURiQeiqsEGw+a4+o7zrpJHsmhI/SEfw3
	 c3jNOwt1yiGixGTFkS/0HdeNKw8DB2arde0b3IRJ7Eg6iS9ahuyrocVoEfMxSmqpHO
	 MN/j74WlzwTlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FB3C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470638573.24714.16396019832264345263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6983eaa01b632d7b8a113a45316e9ebd62552472eadd1748d1ba21025aa57a34
Date: Thu, 26 Jan 2023 04:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674706385
