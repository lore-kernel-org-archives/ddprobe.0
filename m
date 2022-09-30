Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB74F5A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8BAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664556653;
	bh=Qlsxqx2WBFA4Pc9O4H7XGkO5eovCruxAiyAq2IALBm4=;
	h=To:Subject:From:Date:From;
	b=i29MWOwc5rUeYr1EBwL3IbDcheLS1w8QXJNqo1qSj/G7R+t/bK2X8Q/PJ5/b23R9k
	 RapWSF/vyH/0klsPY8FnbJUG6K60QKpHCv6KJiD5PFpZU480MqlCS6K7jf1oQrrN5h
	 rsNciS3M/czj0t37ORORsCFNapKCINKN/WYMXsXqM3ISdkyQ4AqvwEaRzYP3bKaAiD
	 4LOxcIt0d3LqNxvJ3mUWVQgGLjAaQGwaeXty0lri6AqYQ5hUgJvCBDgJSpiDNy9QRn
	 6a0HyuShGpXHg1Gh20kcbTeIlR7qxRMuIKNcefqBpyQoN/14q988D/iYhEzFAwUl6G
	 7qVstd9T3WY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8A3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455665336.12917.125690952863147400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9493524a3a6f4d9ab50ebf72ae7d8038cf3477f51e610c67e9dcfadae04beef8
Date: Fri, 30 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664556653
