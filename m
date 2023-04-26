Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C4F1FA7
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 12:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08270C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 12:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682513226;
	bh=EhAQ67ZTC3aqB4uMBsUbc4bq/9kNR/rLTMYzCnBWZ7g=;
	h=To:Subject:From:Date:From;
	b=StJT0FHFiJcnyafbt46iNkW1bAAGqJwaW5fc47DuxaUD2AbeWJdrBVtnuuGW/r1+K
	 8TJQjPBAA/XGeXwyEiW9QGQWqX0LZqkS2PXKjwXQUuzOM/Axy8as5XbFyU7uUtUJfX
	 fFjA9c4WvmWsmmZ/Ht10E+LWNvikXyEc0T/sFye+bc59M73DuKc+f7EzrKL8nETMkv
	 w1KMhkULmt4K6OFkCiSuGkhmn6VlFclKdDdRNzu+ndJ2IN7cgOC3Gi7D6zH2j8k2YF
	 uuWoTnmu98J3L9veL4zIL1JY+v2mS/6ymPwTXCXVOTuO6oONC6jIqCnpKshg9Ljbfy
	 f0yBkrFMHBNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E264AC77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 12:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168251322591.2548.8537025527849412353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b867d71e526878df94284d14239ee67a46d735c1f285dca519998091141b5e
Date: Wed, 26 Apr 2023 12:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682513225
