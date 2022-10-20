Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7B33C20
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E13C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666272053;
	bh=4afoASRL4+eklvZgexTS7MXsSnmvJ0Q0TrxN4hGQoB8=;
	h=To:Subject:From:Date:From;
	b=B2vOxYQVDeQ+nalIEPLYLggtPUT/Dvwr76t9HUY8cBhg9tkT7j+TUgsmTKezWFSdy
	 AkBhztsDk+BZvBeSGEYrDY5qOm72UOT2k5qJbBD0EWpmUn/SZLbpxr6y9EdMLNAv5v
	 yWmI/zQK4rnp+Gg9a6rAquNRbdkmCzI7jDYNVUkhd/23bLOHnxUi8xlwvva256dv1l
	 lXdyeRkaZ+Br9Z/PwYM0IOlPzfAJGV+liUWVeUe9/5UMjLreHuUVxGCuNsU79D1r1/
	 n/A82q6nUjZC9NUxHFF3NdfQYceyMzyYiJJUiERnV2aqgWPxh8Hh4v7lxNoqlTiaIB
	 wq/DXkpdRxkyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F074C43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627205337.7610.15427540280103457231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af33511387c3c7e09566017ddc0fe76a367eded165c901cc47b02f4fadffc35
Date: Thu, 20 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666272053
