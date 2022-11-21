Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A9B632
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9E4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669005054;
	bh=a/jzQDi/da0jD2qG6+MZFZNAWa2hRh98ie1VbkYDdKI=;
	h=To:Subject:From:Date:From;
	b=H1WlJOwpuGd+jf3732W25FpFsW/3BPEUSrqm4E6ftQ4cWvqeHrFzsTKziDGxvyWGK
	 6nnC6qzWPdzsmXaaisEwLxAYYtmNQm66DFaZ8lCGTy4xpDszzNnqyCx5W8AWymqVS6
	 Ol5U7Wu9RxWW8ysqNu22p2jfLT5fsQHzVw++H7YPXq2EWb8KQ2RGuvy7grtdYBhK1v
	 8sfHlfIl+7zalaxQskltaJF5aTfBrD/Td+pQb0o5UXUapA9vkhTszECaTcku2DV6A1
	 lOpgGgz6xKvI2mIOl6ft7tCsiTzTR5wJS6MYmfPnictkomeUZV4TaL2lbTQMRUHqgm
	 2+x7KPmOovU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A88C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900505438.8811.14205143747105823310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b021ef9419eaf4166cbabaa4b9d24c72c70db5fa0bfec9a7243a91cdebe392a
Date: Mon, 21 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669005054
