Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35883C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D22C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670173254;
	bh=4F+Ryes7BDUMGqK+0FCzuUtmP2KbV7OP5eGU9URA1BQ=;
	h=To:Subject:From:Date:From;
	b=d10HCIM6PKdUbeGDGDcIlsVli88wwDnwY8kyuByzkQsLboOS6/7yzibiNmhbj+DY2
	 rXAA2GfSc354xElcBr5CNEmrUNXiaqriTYdrlPo83Ug+d6u4mJKA+DJ4rkDi82HwVz
	 3C7R7bVuCxA6dzw2r6KIwfW47A7dC2ZQ6ycVOSJZH/fwtWGzLpZbbZQYQxbE6ZYPN7
	 VlfEUC1dOtjjDKJMQIY3yvJHOefVCe7SVTUjeBeIfDNV+bRE1CEIEKka0sIO3sWWFA
	 +KkQbnt7aCY96WlX+gABZYJ5Ywcy7PLe+0bJTQPZLqAzRvh/Im1nDPA29dH08zL7Uj
	 dTDPsOUfWVgFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F842C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017325431.8305.3739446415238844940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ac69f751e413ecfe930af0b7b0db0af8922c9871891f58422989df0a406e1b
Date: Sun, 04 Dec 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670173254
