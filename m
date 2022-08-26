Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29961FD0
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87828C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661531452;
	bh=SD907MUkE7wd43OPwMnK/UKn/1uWM+3XlOefanlhgm8=;
	h=To:Subject:From:Date:From;
	b=m03XsJDYwUJeTbSj6kyFKcl4I10F/tjDj3tDVHQA+B5wUOfC9swZrbCxJb5+WJStY
	 Mh2rceENNS22hH3U//DVtutwQ3F2echuJb+PRehjhfFsnjcX2DJqpacLbGbdzrO9YF
	 Wr7Fye2pdtlSwpvBBtrtaqBD1/bJP29nIwoW9zUOOIniSJzxdnRU/odW9LWyiIwBE3
	 X6s6efFEXBKDjcgPX6efjkVGZBFtuIaItBsTnRwQg5NzINL3Z+FwWaKU8gWAdiSJK1
	 3pakpk/nGqSlRJXhASb+KPoOjvOtWyEI4MtZAHQRhDIt2y5Rr8j8yXZQ84pMFVT6Nx
	 Wy81mwz5OK69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB1FECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153145237.19077.7799645823922975127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5f17bfb0de2a09696ee29eae54291318dea87623b43db236c68bcc60cf4512
Date: Fri, 26 Aug 2022 16:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661531452
