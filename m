Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761AA23D4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 22:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D192BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692569648;
	bh=1LFq/WAlHlphCbHXB9x+fjOW/QaiphTk4KSPBBejTOY=;
	h=To:Subject:From:Date:From;
	b=ReSrmsuX6SiUcbCUdtW5a4n3t/E+gthF0Mf24P6hmk7zg+drYGJfSghz0v6TT4Yxc
	 IxPOuNSPbR4afXQaIihaz+Lse1J6VIXPXu+z6GDdIoacczbDoszru9O0GHuhQIeZej
	 39UxItq1fS/e6SRlPem2N1Lg1Icaprhz4IOiheajoNQYEZqZydvJ7+FDCmO2tk34kv
	 wSlfAYPVmJtzYcaRlEdYk+Cd4Gnzm2nHpPhe+JAxYuIGs/V63coaNHYTvoHNgbBC9Y
	 0sqx46wwVtwEabZrTGtFQC8VhhMYvSCIxCQe107fmDe9/PbO9EzBPHFVKcqTRw4L93
	 UbzGlGy1tzwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5123EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169256964870.24239.2249391977484012870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15767ca5eea19a1e2d635a4c87e54998a0cd69b7673ad825f62abcf1fa48b813
Date: Sun, 20 Aug 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692569648
