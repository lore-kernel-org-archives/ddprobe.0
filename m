Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C3317EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734ABC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666449653;
	bh=SwuhPvCTvV0hqzJ3+cAV+45R1fjsdeYqCcktKmYVkgc=;
	h=To:Subject:From:Date:From;
	b=RFN3uMWFogCGtzcZrFzEvcBOXOIlvElvxrhFdwauIOAKsFRN+zQlPRwyUpt7KcfLZ
	 kecEc3SmIBqN+KZlakKd/xLOjMUPN5dVZL6GNU3b8w3cwCROVU3e+lq3/MI9cmpHjs
	 hnWkgQvWOpUtRScdAJDYvPp1Iv6QEyuVEAbkkwyjzMf844PWyTjoY2FOfUNWkfyQi4
	 Vnq7r2sDZ2TV2Jtr6LMu2NeFNbZ4SxCCcqzUASZHJFG5SmhQnM7TGecV7P3scUF4Ry
	 mgts+J7C/rsaLzJtUYGXmP7e2zKF7alwGuIZusUXy6iU5GmU6C4U7sLWmNLI0j+Qmt
	 dRg63vWajzqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E41C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644965332.28401.3927757327678834603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac9fa10fe8fe6817b337c4a4106b100cb62af036390a9ef54001f242079b9e7
Date: Sat, 22 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666449653
