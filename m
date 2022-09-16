Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C573A180
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD0CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663304453;
	bh=E96IOlDXQJtxI4SWWQeEPL42jfLcV0Qt1N4iKS2HufU=;
	h=To:Subject:From:Date:From;
	b=Xej5ODNKXBzgfUpiv/vTja/BrabDI4htt5JjYS1F+LI/Y3CX/1jSFrbYZUvPDgdeC
	 k2XK5tF0RzMBkEyBGk5odLBAY9ZGHKAhQpUJKPTKhkzUz0RsUUJ/ggOvcNVmbBpsW2
	 w2pNe7+z0MVs9QRcX5rmg/sgXmARIMSdU7q/SF6KyQkGt9YRaESfYa7e5KF0/ccYa+
	 pv74VOLfPlQQVD6vPsCHS4r27fCWzg7p4Us7bVM7h7cYY26g54kDoB7vtEC9oVeeEa
	 eFIt5JBwW3lO36Q7NWD/BRy0S/y8g6QswuAmlsK7jbNJFWAzvSSnXDcpsHy5L9jkJV
	 3+s0ZlH/EVVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F53ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330445332.14183.15581869329196680269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9728cc2e9e96fe71ffcc1373865bf03fa3a1615ea4e1f84ec1fcd661694425b4
Date: Fri, 16 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663304453
