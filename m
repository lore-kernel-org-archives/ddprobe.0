Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79A3EC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3B7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669872654;
	bh=yOj/61ynSK5vKwZJVUBxLQGn0NhHyShNkipbQNN7lL8=;
	h=To:Subject:From:Date:From;
	b=jKDpzK8spW1eISXE/ZV0IrC9/Tt2PP+gbGe1NvLEu6Eg11I9WIxO0ifXpgBKlDiYY
	 V4MXRGVsNdWHw/L/JeqCeGBmHzt6faMOdvM+3JBES/Tqp8VdYwuq2b7dVVHdPGvrF5
	 IIIL9vxBgrk9CTz+lTwrG/zM6A1G0425trKvMXl6Ryb8e2LDkl6L/lhnJTdsMKCWnJ
	 1lDvnGu14KyHehIwNsfSXtvrAH6ouA00XXay+tdScFsuwjXaGGb2FdgqFPvLn5OV6u
	 3x0wQ3/liLPytN5e2YXn3gsMQkMKZRkcqsw82ALLBKJTHh/HZcKW4KLFRlXEIo5UPP
	 2XLxZqDe3u2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DBBC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987265433.14621.4988822807503676929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76171f2cfdf1e7afd6b8f01c9a673053cee6de14cdb18ab6031bc3f1f0b78bd2
Date: Thu, 01 Dec 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669872654
