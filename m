Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC237B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70527C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666933854;
	bh=QP0CxY7GfXUhEQWb8p+uLWl7heawbVWdizFKD9L/Uvc=;
	h=To:Subject:From:Date:From;
	b=bNBWrzmypziY5OkB2u7Upw1LhDgg55oc16xbLPjUTvS0tme7LGPE2fLoale89RfoS
	 CTZTP1JvkrNdI1QrJ1IE/IjjfPCs4q+gMDL8Ec3RRMZ5g4a4KXEOppnWhPELHUNDeI
	 RGeLhrTs956A4fm3C86HevyMxWvIlnY6GSXCXCs0m8Et8iJaMfvDqDTSp/IyMLGuFz
	 qITvPotJXhm4TcP8oP0BOXj/rM9+0KJciMCJl3jSCMTcThKPms3XlXk5seOt0PDBeY
	 mwr/MKojt1ZtKdCr0UV1p0HvtREYegqo2e0/QHqoOMfzZB0QCljIkFEl2oFLnLjh1m
	 i1iU0L5U9gisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EC2ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693385433.6399.18251689313856928483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9012cdfe65200f3eb4a1ccca26b1e1181e8546a4f66326b5cad4e4f737eafff9
Date: Fri, 28 Oct 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666933854
