Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A483222
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840FBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673995287;
	bh=44WCvF0n8IsMPDGKedzE6BOJlShISyZqeGOmhRjo+8Q=;
	h=To:Subject:From:Date:From;
	b=T/iJSJmAwS73DoZn8nSkDP0VZCFZQCxQ02nliC4BG2atZAVMtS8XsuKrSTVnY4pGe
	 UN6KVZAT3CNJZQWQv6Oe3vN6MBa/A2t/cHlQ1sICoCvLLLE2GpXjnTa8nTOaTQ/bjU
	 uJDmMIn8/vShJq4mDnHd1U9BDmdXy73YbcsHLkisqtoDvb37eUSIfmQNTHyv5Q9BVR
	 LJaeNzTiVYvlYkgIzxdi4SHp9tZ1l92REALWXSeL9P+N15kYjr8QhUN9AgNUAz1iY6
	 YLES4vF5rD/9wubaMwmdQB2UXlB3YdaHLFLbHRf9Mn/MLMBCpV2vxmtBXNXXwH7fqL
	 cUFlAfNVdDZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEC9C677F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399528742.22026.18445720707194494658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2a0db3728afc6e4320d461b39712f7a6df9d9529e2537a979a75d821f74396
Date: Tue, 17 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673995287
