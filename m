Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F82320FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C85C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674222725;
	bh=TnHSFlXsm/ZBMfYiiZBIk/J4ynh8ODsd32n0EhfdovI=;
	h=To:Subject:From:Date:From;
	b=NiI4w7yCn4WM0mWysEybnnJp1y25PxwCpc7KvxEW7/9YkoH96NrEFZbpFLfyQi+AY
	 kECJy+yOQKn/Fdb5ALkOylsXV4EaKzqeEI88oHD4ekRWbaHFGQCy0WGzhMSYxZ7WsK
	 YKHis472wT3jhFbztRg842YBpkOrrX2cgnfFC7Ur4zhpWTfJmHoSAjZmAfR76XfxW6
	 AYE42AAzyVFXJ9OsQtO/G6LEMn6ShKf3cBGNsWKyjUKkz1BFyqDjfKbaRJmYhTQiKV
	 Z8PoZzmIEbuS9ZwYID8RfJey0RuDeXdWSadzdymn1SM1Z2x88IziMlIPW03F5ereg5
	 eiw085068J8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6CAC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422272575.2888.13901732494049960325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa37641e2f02c9d85cddc52a6fde86ba884abd920c3c6aec9550952cd4481e3
Date: Fri, 20 Jan 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674222725
