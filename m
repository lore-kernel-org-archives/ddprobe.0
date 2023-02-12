Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47556A47
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43A1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676191445;
	bh=TPD+p4BvMJsNkexqMJkKQ97Qlbnn377SF13SrCLVoVk=;
	h=To:Subject:From:Date:From;
	b=UvWbQ6RcdMg10isnMRMyD2DpLL4sRZZ2mbxvXJ0HW6AJ8V0+wrJUXcGDGNMX9wik+
	 WV8xGcKXwEI6to44i+FlRFIviTtQ7YQqBYQJnW7NllPW2VJP5wm1Mo+9EXIqSTeLhz
	 chCMrC7FpfGsCruYwzD5IBpwm9uXAos7YUxMDxysqTflHBgif+0my+mXUzYb029O54
	 jPABGeyHVygYCJOWDLeEMEBJP0zBkY9nQRG8gWpTS7ByWdm1iNpcHCPnQp2qwbw+n3
	 atELybvvBYZdUnK7t2GrDo8YwZqDsEgW4cXdEkV1PoAKo0jW1bWcIm7izjT5gkj7Ho
	 KYhN2HLjM2OMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C82C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619144578.30301.17179368640661762849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9fbac6622ad3a33fe1f07772d2f90750837820582259bcce8cae162d8dcc59
Date: Sun, 12 Feb 2023 08:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676191445
