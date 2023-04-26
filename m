Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FD94C8E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 14:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 139BBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 14:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682521026;
	bh=IAJI+JNGJCOcVgjVzjFD0qz5+kYpglT50jMCaLoSvvA=;
	h=To:Subject:From:Date:From;
	b=GuRT6kNaHwXzOSxNRIJIQUhZMi+i5MZ6SnIcldVG35BLhm3eP/J4ibrJ0zgGyRz5l
	 fOChSepkT5w2qjFMmGQVTB+zYLQDckrRvLncVVx2nLtRto/MGIjlv2OQPamXa6ul0T
	 a8hA1SUHgm04pqKclcQC6wdfg5t197LxvppwSAzaHVsnLdUP2ZSCaZAwtrhxA657l5
	 EuSlODQTYqsfjbZC2noIe1ss/0SdzGQgu8vSR38Yf9MBLpu7ZldPcSeWHOX7Up8woY
	 0FsfFH3NwVeV1ZkgE1HLgqCHNTQtn8SBrTc32StcVIIyrvuXEF6FkbNB5FsSuozJ2W
	 JO+3dlbsuIKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA16AC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 14:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168252102581.29369.16088720193889477103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f4048f1526ab3872ef6262a67d099c8af8a6d33adf2837f1b9e2459c9fd626
Date: Wed, 26 Apr 2023 14:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682521025
