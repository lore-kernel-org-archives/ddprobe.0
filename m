Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27EA17C3
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D69CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666399253;
	bh=tsUgBAR1yCE4VtxOqkMMZiIozpQKGgTLdHX1cHDPcuU=;
	h=To:Subject:From:Date:From;
	b=HMPKxDFLU+vzmj7ZQJVAvA30jWueQZ4N7SA//ONYkdbHEMgnmlKvsC0HoUoxV5K8C
	 KeWaamGCV+1mG+yzTsRViJELn3rrVWMQSMebfDzu5BvldWQ8dPyWCaHkAwY3e0St5S
	 pSbAZ4stuKLDq44qlS/0t4SeCNoNU1REmFeiuyEqSg/MxfEt/0XBIpP4a1MMKnIDpC
	 1GrH9iU6rKGMMHLPoqntwH7/OPrs9KxeWHBf/xF0lXn6J9ZAOUhMXNZLjxOllT+d8h
	 tVyBtsZHdhgTdEhT4oDjZIA4O/kvK0WOANtiz6v0GOJ5swnKsqINGXeOsC85psqAnV
	 VbxYHsMLeqEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE3BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639925331.4222.7825759865992681053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf4c055b6e12a71e1576107034463ea3e4da3a61809138202dfa05d8ed56897
Date: Sat, 22 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666399253
