Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E652217C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CEAEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671681687;
	bh=N4a1JKwl7u56gChtEFduWS32WDhTZdaZA3LBD7OVG24=;
	h=To:Subject:From:Date:From;
	b=urkKryR8PP2+PtnMJ8Of9YDElohxDZC34oLtOEbItZacOb9HmJdAZ1TPfnGDiYpx8
	 v0G8sJFTPPO/YUaO4h6kStTdVTkly1RLQG7sSmkZl3BLxqm/g7JlbKbblbEowUu30H
	 RQ0VRDMhy123UGWas67BhXmEiBUTlAop5WV5/su5cGuJECFaN/cmjivIwCKnf1rnYC
	 qzSdVETNzm80iL08malT4aMBEMvsB6BSjIZJ9wPnpdOaPL5e9+YhC86sa2qw1Agqhu
	 HALO4CiN5uWNvcBcEeVIMwDGI00VcKxSMfk+tidRIF++nGtRnHq+JvM0cI9SVT4ODX
	 6djTy9Fywcb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A59C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168168742.30907.3649618867057157746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f19f188301665a60ce0f2c0a98ae97fb39a432f584294a2fe88e347431d954f
Date: Thu, 22 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671681687
