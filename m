Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD10B625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FD4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661887253;
	bh=SeAoUc3lZ40Sg6C3pAlXjlzRIt2YaMwQZiSUSjYBV8c=;
	h=To:Subject:From:Date:From;
	b=rNtRoy5YOVOzqMBQbL8ZKUS6HCUxakBBqK2DweuHOmZ5N4uAAFDvRdNt1l2sPNg/N
	 xRnMmymi0oeJp0VtdfY2osM3DfhrndxSfB+4buPnWni/1VTH8gIV/QRe0SFccu1xWi
	 wakh0wVYAktyIgp8s7co4eXVKW6xL+fFUZNlQ8/12nCX7IGlJHGXg17niNO6lZ7/FU
	 j61hXl/fjxdjm94qlZlUY6GN/OqYxYCjaDnxaxJCLt0V4OET37et9SCg0BVyHtgu0z
	 DVYR6WqSiRTmZT/j3+tq9QK6BOLnD+nTzL5yB3JiYDIDI3J6DowUTXol+64AIq5k3S
	 96hvW9CkIGrIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAEFECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188725331.17430.8500287797752788464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276957a42fbe90ff3977be8215e3f91f547555cfc590c1ad169f9aca1ab13b2b
Date: Tue, 30 Aug 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661887253
