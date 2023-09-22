Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FF3377
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC578C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695347708;
	bh=nxowh9XUP/zYDbgMS9Dx1JMx0dZQYokkoZUQBoBhzKg=;
	h=To:Subject:From:Date:From;
	b=tpSCAB6c9Hap0uMJOWizlkkfDKgziH0X4hPMR83PFIEghy4GwPPSWkrj+k2WmRlHz
	 4NLyZe0EByo6InnbYpiWqyO/H7Myd8dVYUE1hy7s3F19xZ9mh4k7tWvr9/qelHFAUj
	 9o3Q/Sk7sPhnmkVxs9yeebULs1LC8M35o4Qwq8poWY7d4f5pXjN8qVqofCxSVETuUA
	 4KI2KeW+g1GLE6HMPE6Zjufidtync+E2FlkU32pmyh5wLAPx6Irr6oO1lDUAqND4SG
	 0bqGo8uRy5k5PxWt1WVsZKcyijDnfIvnRkwoBYEEfNFwNk40voS0mgfqfEyI41KC1I
	 jNF9+wWiAxJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FE1E7D0BC
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169534770867.20000.8830621411483585584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a6c82eefe8985e413daa9aab4d17f209144aa1546c01b80b6bc6a03ecfaabf
Date: Fri, 22 Sep 2023 01:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695347708
