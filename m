Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666BB17739
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF84C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687865588;
	bh=8f9tu/VpkQdOktAr8v3PCisth0r1A9HxZhONZc//fNQ=;
	h=To:Subject:From:Date:From;
	b=oHzeI7ssEc2RVHifp6H7v0/LDtmO3PXwKKLUUkZZQ4+vWoI1A4OSp0pvF9ZLSL+/N
	 rM6Rj+LaSBSou4Nm68ZgdgXlG0NVp1owSxPilRHmg+a78ns/WAIMziALA6OUGginM8
	 VzTR+QKdN0Q/27RkDd36vptjwo3XQ8t7DbfwQ0AM3yg0S+ktggkT25UOXCKoqi1PLK
	 JOZBybzJqCxubiv3RL/S/W5iEt0w0XrwhLCqJp3ry0bUvOJ8mBCOBWiQF4jJNyw+VS
	 xDnp79BTnz0Iu07po423IeRgi/RZClH7x0MnvL6BqHWjsHNtbwHNX+AFWTILkYPmdL
	 5aBBX68mistFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ACEEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786558873.10541.8285767096316227754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc735396faaad7fbbcd64bf2c37878c462429d185189d7b285e21a4ea41cf47
Date: Tue, 27 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687865588
