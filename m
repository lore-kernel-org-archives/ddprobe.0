Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4650DC2C3
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 16:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EBBC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691167388;
	bh=Ov3wPm+2HAVjLDB3rkXrXqcOt/SYT5+x3IELa4zKGYQ=;
	h=To:Subject:From:Date:From;
	b=tky7Spc244Ccthf/NNoa043C/1LTpxRkhrSuOf9KDhcpuAzEz/KPUGALv8d0PYz9z
	 9P5oTKqYr6JlnArGlGwLtpHdRDvFH9rS6wIPt8WWdV2+/MGqu5QwaAto4k2iAYnjSp
	 8sDDPKvr6ex0B7kLZjRQlYMp/RKtzbfSVOiXZjKNxRwmYRfkeiHFoCpU3hT28vvRBC
	 dsaY0nIDWAD4fOubIWyQ+UN/lKW5Kx8cbAI6zRtSgxAclW6kjo0jTmuWGoocLlfXiY
	 +idMT5XM90Y9RuBpQGVM9SFKOLpnef8XIx80IxS2tjLqfrvVcSt5rm8THHsz7hsBJB
	 tN3DsdEv0VByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D11C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169116738867.28887.8218115977648975563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a3767419e6e76a81f3370b46245a5912bfef4066ab026a23fdec6b88031610
Date: Fri, 04 Aug 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691167388
