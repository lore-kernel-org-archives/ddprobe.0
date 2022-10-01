Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33B13211
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65829C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664660453;
	bh=K+R7McHogwTQ9JxtlU+RCE/rgB2f+RsS7Wx+M9Q33X8=;
	h=To:Subject:From:Date:From;
	b=D/tY6y8cPOh8UyeyQUA2zrU1pggBd41TbzH3QQUNj3I7EOgifqZ4HVY3Nf0Pwz/UX
	 ikRv0PFKVRBcPC7dsfqHmFdq9mrFICcmC1DTT4yoK99id7L5rOAno0dI5MmgU8okSx
	 11Myp8Jzg/TjweAxjhSg6XqYttXmCnHUVhwrOycsDDywGzaA5CPsHTlzOnrmhsN/mu
	 BowRzAmlv0icap9B7r7KeSA6k/Frw0ZUEwe4c5OjNGCYhrpR3GnxxJiMWQv5yrs/xw
	 nDhWAUxvn9caStm2+i3hBZyoFjttD9NRcotQizk3BwKu+JpUoIbJqECDSe+SbwhqlX
	 90TXX1JeBXIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAEBC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466045331.20387.3786500749841518476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f025275325baeb66ad92006aaabf38c05f0e7b6c32fa59b73e03180ffb2707
Date: Sat, 01 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664660453
