Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AEB27706
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F060FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679693466;
	bh=UAN2TDELGovmAw4UT1UaX2jYXlSJi2UoC+mGJOtQYN0=;
	h=To:Subject:From:Date:From;
	b=QEk/y2feYbNaUss0DtWtW1yU1Bo6vm1O2oNKIxzYPBQdTMephywPjcZMrPIdUHKBp
	 q5y4If6J52Q8qOb5Zk6piV7M4AFzV8vzfcvNiShrkrBwnpb6sUx6V4Hcoyd2iNJAC4
	 uzJojb43WgSzDnQULGuL4Dx1dya+8j5NYmDPyluvg/9nATz5bSsHvx8z53kKQxy7ad
	 9k/BS+FG3BAA914JgsfmXthCrAJGetwWutLIDr+DMlZE9up0YT5/OLS5rCN4YDJHUT
	 m7KLrRA3Zykqf8ZkfWSE0/v0z7rOaJRyNUel9tnrhtEsZAZtSqGArsxFyrQY7UZ3CU
	 /YRVcAJQCM6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19F5C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969346578.21323.6116892191420090738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55435bcec1fb70215cb342498b26e83b5852c0bd00c624b685c6608672c29d3c
Date: Fri, 24 Mar 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679693465
