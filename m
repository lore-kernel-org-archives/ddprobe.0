Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77513FED
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890DDC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661608852;
	bh=iWGxX2mmB54Z4WUlMWwX01KAFvBudafnFv/mrpJiEZk=;
	h=To:Subject:From:Date:From;
	b=LgHlQ9KTzaazn9pcJmCv5AFzWq3atAfFEiSzvPs9z/YQlGsAH3VIDmPErmVWsxfhx
	 xvyMusUzQBlIU92F4zOgcw7d4peTAziNMzL3VzyUYLGvbcAz5Iop64tZU/3WrTD/GI
	 QysBvE/+TCNlC5pf+JQB62MGAWK2Px5pMo69YY2y036q831cZPbI0r0IGRRpLT1rhu
	 LdDJVnFc0j5EaNLBqXkAQTTQ9m3pviHxxDmUfGMxkY0SF8qXK/4D7JUvwSZYaoygqR
	 qKddrNrYOlqQPTj0DGYsJ5VjyXSOXTor6t0FFspZGlIc7hdxTDDF7WC5stX75Ym3NQ
	 eblS908DWiD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7BEC0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160885244.10378.13647239585544801659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c784088c37a8f5116bbdc1e222eb392d2b1652c3ac8c3d2ed1991c53e25fe16d
Date: Sat, 27 Aug 2022 14:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661608852
