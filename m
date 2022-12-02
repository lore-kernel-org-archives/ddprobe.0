Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5586FC3
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766EAC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670008254;
	bh=LqlwDy0U41ul9hc46hj0Of70flf5dE14YVlWh2IOj6E=;
	h=To:Subject:From:Date:From;
	b=JMBkTs44m+lnyky27i3l+4wNgcEWAYN9MQiEj8/w6RkKPnBNrLgzTxRqEw0TFjUCN
	 qQE7zRdwSHcA8sv4NmlQNnZvJGpRfUiEDLZKD8khU8+2D+nc/wFO+dp3xmakxtT6j+
	 Ykt59YdHuFkYARiYfpV3vX+da0viopc3k7+78RKiuQQrrfY8von8/5MxRw3X/Hb9xk
	 UscBFgMVG+ZEBki0Bbcz6WBfGvrF2NTdBmj4Mm9K8x8b5TgMNkXhDzIek45wtUq+Gt
	 b71/PUZj7AwWIiYpZ6n+NX4Bjj3JOrerKZvpHqpyzPbH+OH8Wk68V4ZKnz7FZCF/7W
	 Y2RPsasZgs3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593D1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000825435.3021.3864322934569629026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac82dfd3eba308d58fb56f4873561c20ee1be280dde0df7302777ce1a72f5f89
Date: Fri, 02 Dec 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670008254
