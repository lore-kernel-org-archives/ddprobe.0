Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD0311729
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692649448;
	bh=xerznPNtfqC9mQqhPM06LTHL9aFF9Ewvd7OPaHe005s=;
	h=To:Subject:From:Date:From;
	b=Vc8TRS7gp6DWy/uauXmCtprjhcqSaMDuKfj4L8lQ8opZBoXDjMVzQdrn1BF3d0aDY
	 RvNvKX+MQsAcRDqOop2ivrJ5YgfAvoLjIT3p/pSt2AZcrfCsKM/IbudMprteYjbK2c
	 vcJC+vsMj/mYQD6vJpzl2lGyvk121aQy3YQFurgrHR6BJlw0//P5B34D3zR5ZnlZGM
	 JUd23kKN10uB4gFXKVCAu2sqstXYF4B72il4C/LwM7aAAjCyg/HJ1yIjzjk4dbNoFq
	 /7svdiwRtayuCr2YfZAiTLosJoeZYg1ES6K4xcN57tV9qDnYN3+mJCDcXDp4nFPvCE
	 Se9s0Rku9IXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41F3EE49A8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264944872.5446.5942562461906826391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b450c0576e286f4c0582acbbf332b98f19a4f6f7a3b478750438d52daca6ef8f
Date: Mon, 21 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692649448
