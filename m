Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261E9377
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D700EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679017205;
	bh=HPbanSDlNxnoVDF+tgdEmrIJtJfyJ0ztJS4W229JUJw=;
	h=To:Subject:From:Date:From;
	b=rWIBw2OczPd/i/XXql6R0EWHQhpqCzRqL1hnu6gzkjcX2JX744HN/s+ZFpuze0FeF
	 EqM5kq1aAD6H8O1k7e/t5ajs93CF585lM+5SEDxw2QS99T55qDy2BIMVB12+S59pAU
	 Ons60VcY12aTN1EoOj2kvKyABKgzXXLbWX4kZ9C5LZ0H8WgdAxHdFrvg+xEq+FFzkR
	 7nDwiEvZeuAl0BfAtsQfEs/z+HDmluRyoHtOMGeCYTPx1U4FlEP1yftK9zj+05Ibwb
	 qXMjP/iMXvTycBpWiFcam5GfiqoEcN5QIB6leAGQqmkTKPH4d84/mwe5a1rAVNHWs8
	 62I5T+rSEp/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF85C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 01:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167901720574.23610.15598278880840019411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63c0ec2001351b420b6ba6c0182988f5576e60f3ae63184a46120a3cff60e36
Date: Fri, 17 Mar 2023 01:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679017205
