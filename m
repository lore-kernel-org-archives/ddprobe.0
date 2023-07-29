Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F0A7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9B5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690621929;
	bh=OE5av12BXH0vTPvU8EH8JeZCjf3X6CoY2LmG1ECmGiM=;
	h=To:Subject:From:Date:From;
	b=LWOZoYUo2ePdSeYrLIbACph9l8hudMiJKxYipfTBy8f+oWfrRUc3hbW+yT/rUEvo+
	 ZzS4KN44wgQ31Xiiccg5uycuwX3xoSYUYuVTIaw+5xvnOwMdZdlB9N6MDjezoV3QqG
	 187wJZgNu/EUX5nL8dQiCJc2ydcQ+MZv+QWcsorgjoZSP2IPTpVvGiIKGcsD5oD5UQ
	 HPgtrRFVfLLUoOIwQaboyDaaN3l4rzneY21EWCCNIMfjUeHcFOEFyEdZAmFMPMf+7n
	 MvRzaLrcMiNArWQJkpWow0bKL2gXBl+2A5bK3tLYO7g2euJpB4fMqW+W7yBpraCOaR
	 DO1Imt/ovdtPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5C001E0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062192868.1727.16322628726027767148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599975b4b69237cc73d03423175366b4b628e43c55b2cf116413ec8b705a2e1a
Date: Sat, 29 Jul 2023 09:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690621928
