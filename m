Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FF37EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851CEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673597487;
	bh=IYsg8bR2G07dnAix+8XPjc5EYa3B36ih+oO74wBkYio=;
	h=To:Subject:From:Date:From;
	b=paC3Iol9FNpb7El70n9P6usiZsNEVZoG/TvJhUxA1q70AHRozOtaSCjwCdDh5+/jg
	 DuG75JTT9HG+ZNemyp8DvuWCJqjyCI6MtEpCo2N24pQsMFPaHtIX2W847N8mZY44FK
	 dqyhmrOXcKKdSzTuuiGfr/abAxrsg6FDXaCcaet7KbzCeV0St4dvCNzwiK1Nb2iKVU
	 JYWb7TDjLgs83J6Pg1CbLLfXwbvybNt63STkBhhLr6oTGTHYjm36SS8mJhY/HM/A9y
	 WDlvYXrarx3c15P5/rZZjtnP9Mt3jY7DLGILoFy5Y2rEu+vSYDYe+ToRlSsJqPPK/4
	 DPnClCewc8Vkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A8FC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359748740.30589.13841231526441107286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50d964896c68d58cd17bec108e8642a161b32015cea20b480d242ead0425513
Date: Fri, 13 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673597487
