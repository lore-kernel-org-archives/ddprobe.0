Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1F323E
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA5CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676660706;
	bh=OrGdoSqXJvQB/YB45vaQjI7Ux6bk3H7DvU9YDHf99Js=;
	h=To:Subject:From:Date:From;
	b=rEdda/O6DT+ozdpPCpf++mZmXGn/YsS2eANhNPFevSxBfI6RKtuYPEYBbAyiLUfXJ
	 MwIb5sJ1GlEr+Mes92WGEuMwe75fxmyZXWU7OpwA/36Mu5Oc6e4t+vFt1K4apym8J7
	 vxWyyC5ICNSCXjHZWn0V4MdYRvw+2sOFEp2jZGyyLzH2z3B/5IaugwpoogX6UHzBXH
	 6NL2RpayEgftuZfnqSQTcFZSgZeRG7LUnone2wHObZIXanSRmvcmIiOMeVPtQB+AkW
	 IosT9i1j5w9x05Abj4DtkbU0fT74nLyZcpkuFGN+lUp1512qcJoo+M2Y5VbDRpEIgL
	 oSgiO6/CfXg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C611EC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167666070579.16528.4977502740163877523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28463def103cb66299bbf91d663d6792c9548af64a4e4ea704fd194d9ad12905
Date: Fri, 17 Feb 2023 19:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676660705
