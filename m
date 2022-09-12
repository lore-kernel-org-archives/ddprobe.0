Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFC64A26
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6907DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663012253;
	bh=1dD9Cv+MnsiIBe0b+xuob6z/c8JQV6b4MgHaZkJrp8o=;
	h=To:Subject:From:Date:From;
	b=D/FIxV+b97DWwuliGvOQJqVv+8qYXcjnEgHK+IpCGiSJHZX4vs+cwr7MljT7yZ67D
	 wNciEEw42XiMRYPm53be5VxDXgExQoRG9gWG6YqWoGK7eWIQXoRqPUFOR/bUHDzh8Y
	 256HdDPbWWs/wjP0AXXj67tmAXZn4iTzySRdxcXgYvd/y9jQKVwVbXU5QcANwD4R9F
	 f1yzlM8RqSYQjjhdC8rFRF2v7Iq+q1wknRrveVU8aqkPjtjaiSuZacO3YSYTXWiMuo
	 jpBddKkezVhecBaKvtU4HwYuJuvzNvy24Zx1+RinRySVfScfI+qXFAuLT/3IoLgpAs
	 wiwcmEo3i5/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BA1C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301225332.9427.14544056620503867410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b28ad5231e37e18ce216c3a91cf67c99e22bc4650762576c994a80060f75c6
Date: Mon, 12 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663012253
