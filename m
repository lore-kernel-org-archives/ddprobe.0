Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F23322A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7362AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668177054;
	bh=2P+Z+QnBue+LcWQqrxEut0x0ovhcmiS9s0o7kQc+ajM=;
	h=To:Subject:From:Date:From;
	b=rH1aTk8WAoGQ07wIhht6MFBChwv6PXTEOSOPl4ZYcD7cYGTo8ce450/hRj1b1ID+n
	 96Q3kzxEk3fO/0GWyXwd1u7NOUxg4MicczfqMLHNepCrB9bXdJS4MmShPZ5WWIFUGS
	 DCe98a5oujloj2p3WOJ058Jk7gWPZdh9gXY/jra5bOo/06N76B9hjQrTKs8NpTLPC1
	 aUVAKZtkT+6AK38qmUKD2UcN8khQnF8+ls0O/WuS9bEHIjU20iuVeqpFaF9E/c7tIl
	 6fJvyJjwrkzUcmClAQfEu+t8DmZvYECzOgWJtf0//alo8sQXDIgV2hqgEwGwepYAQ+
	 I8RjCNuxtbRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5613DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817705434.18419.8108187594967713181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795a012255e39eced69ea7514fe57dfae98a5b8ca642a1945b76ca7953ee1fa6
Date: Fri, 11 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668177054
