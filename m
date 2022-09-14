Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB733D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A137C433B5
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663161053;
	bh=g09eXV7Yl0QxuRncCV4GIEChoUwkT7W3R3Y5v6HZ+aU=;
	h=To:Subject:From:Date:From;
	b=i3+n9vb6INnFF82pQy+I3doNIaXqXrzEo06Vs9H15DFbmehEoQMEJwYa17v25ZEc6
	 YGebtboDkAkSl6636I5C1sq14r85GVXGdZFGh4WEhqJy9GAoHJMQHwkGp6mp48rmld
	 /gUL8zxmLB67r8mLzYBignlq/d8u1Z1KFZU9gpyOlCh7aNkFlnPqssfNABkdPoaZld
	 j97ptczQM+gPzNQOxO7Mt6TYe4X+cmxgNwNye+Gc8tPOMfb/w+hTidZm+vGlswAKkF
	 +FQw9b0MrcxDT/Gvqney2VAj3QyErTOpJTcUBoTTetK6U1EVPi1kmR1I7uCpGKfd3g
	 5EuoS3tH5lxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5611FECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316105333.19096.6371346447071997013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1d8e99a084199b15e2aed0be005d663d2d29b860c9900c52c7a26d162329bc
Date: Wed, 14 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663161053
