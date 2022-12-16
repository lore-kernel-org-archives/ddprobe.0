Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5A120EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BCEC433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671206487;
	bh=BuQ8NzcCXDBlBR47w7tdurcoBTkz5A0oyjF+/ZcZhiE=;
	h=To:Subject:From:Date:From;
	b=S0Ytx1d8Cp9ftqz68BZvVcbvFzbBPw71YrmZW1qzMnzyQMA4Lyb6SKl0Zlx/3BaPc
	 P6FQ5DLpI9sr6l6R3Utx4+qtf+3ZnNc7CWae47g6zq+LcPSUO/Tq5C3VzktI37bfwv
	 89sASWo8MfPisIlb34pQzE0qhIJi1ICSXnjG09Hg1j4d7SFnLaEQsTAJ5ICk7oLfXw
	 sqOmNA+Tia18ldBRkODgtsGQXQz29KBVUUtveRw5ItUIHRo6JlSYppomUOKvgiX+tG
	 W5scsSM4Wn9ZgstzcxzV7Zp/BbpMnyBqFSFGnQjWPW2gdXrl567gP+8Ts1hzZYGtWo
	 iS3bM/3SIGCyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F98C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120648740.19715.13335535809053664950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ed212164fbe03ed5e4447855d9075285de1b673a00df280ad0211691c22844
Date: Fri, 16 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671206487
