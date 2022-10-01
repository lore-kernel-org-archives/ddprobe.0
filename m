Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15922569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A06C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664623253;
	bh=UyQ95t7Pmve8I4jTqf+D0r+NXZti7E5XMgO+C3N9Yfo=;
	h=To:Subject:From:Date:From;
	b=P3ajbqBJWdRMTdAtMpx2YxD7EMNHQNJ2z9DL8vrYJ0MWz909U2CPcP5otH2q5eZNj
	 QUOxbVINv0jm54N7/1hg50gviEvTQ26owxrQ6OpB2TJm9vBikE25R0p4ei5+fwK0JM
	 rpnt0X2tM/iTgY2jNq3/EGh/aU9GCYgPNZUaof5hxLL81ytHCvATN1r9zFb3eMSl69
	 bv1ZnkHdJvilbPeF2Iy+X0W8HbH8dxQLFPCzruxjxIEy2u7l+5p1Z12JPiVfWBtvOd
	 hOmC8UboJQzBtehgz9JRq84fCOJfzEosPoquT6GAh49wEYHJ8hJ2NMPE5fX+Xa6yEU
	 OF3yrV2YGBmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD44C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462325332.31345.8428184126078624975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7948bf7f9d041a03d600d34507058cd68efbae7fc35163e16d875692ef4834d
Date: Sat, 01 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664623253
