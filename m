Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9CD18E
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856A2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671754887;
	bh=kSYl9Gda8pc+i4Br4pYH8M7+aJnHC5J+CKNNrpoZFes=;
	h=To:Subject:From:Date:From;
	b=laX7IrTT/cG3c4tK+HXWxGZoTXaIZ190qLvwR1bH9JJQzYDb00Gvfiva4nMsI4w5Q
	 dl6cLPiEuOCIXjAF7KPfmqWKl3gfNc+V9mMD6RtW1GyO4a3ThiObjn8EBtJZE2fvE6
	 AwI3FGfGpQo4RhLqGvOsAOihC/+/8kpQBy/H7kQbtx2w21DMsDe0xhSJcHblaA8Lgj
	 g710m7/YB3j1uaVmHKWHKHNDes3cRb1+aykXQFv2r9768mB9oHGRC775GbGjS7DgL3
	 7LBrr5R3Pj3DkVpZRUvLMnwUpsWLT1krKElf5Zn0RfRdT48LQJKGQENYJtld0ARBV5
	 Wy6PJ33peVFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667C9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175488741.24362.15221863101032686497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76798ec2ea9593c7621dd44e7fe6f9853804efc25125fb4f2b59439cb22fd02e
Date: Fri, 23 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671754887
