Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C17E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C010BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688364368;
	bh=aNDoSz/QogFU6Bvsolyu25bs4PTsVblTNep+X41Rg+8=;
	h=To:Subject:From:Date:From;
	b=btRiSFFF4Mk6KZ7Drxkn/NtgTuIp9GxxFePi8qzwDrG6Wd92CDuL2x91j6TFAVHS6
	 6JV4PPzWm8Uqh4EH8hdkVYPNbYH9XJqlR9Odn1UC9ppsFcLTwuY/OuZpZTa2OO18wQ
	 A1gqnIHDNnQmdg+oQnxiweq3s+hbFuahxxU/UsVdktnA4JT67e9+Gy3qvhHtCAbUQ1
	 8VA9leBdtf3OaOwD90/zHf/Oz4fMIfuPR9m2Zk7Grskzg01O9FKls1utzZaN7Qz78o
	 LMuc1apSnOjAaO2p4y259ivKGYbfiCPtNQW1aqruDLVzwv8/ChLeek5vfiJGSMmsCj
	 xBH+n6f0oyv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44B6EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836436866.29074.5223397573817603780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9391c8d86ca4f1e5309c91e3bbf0a80c884cee203540121184bb8282c0d1d019
Date: Mon, 03 Jul 2023 06:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688364368
