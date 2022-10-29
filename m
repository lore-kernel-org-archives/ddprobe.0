Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13AD23D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70188C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667049654;
	bh=0tTMDkZxrt8Ne3ijdAFzjs+IHlk69rU7zW5JdQx5Awg=;
	h=To:Subject:From:Date:From;
	b=dgGLRvblwzm8vyzR5JU23aVqZeBvbUe0aB4t66kuZrMANhy5J2rAaxvqQNgA9rWqH
	 ejwTDQP+k4lRnlJiwSJBILawZ1X9VMn6bjfOA+JFapF5URWGV339TZH7zCPVvwm3lT
	 JqKOluljVxVcEyZ0DJbQvgB0MwBbxvP3ViYv76LveXxvIfvnNwFDbIzNc36rDTn0pK
	 emqf92xtmUIaq0/YISzRbq2B6vGjIB5blkjho+p/YHifd58JNwwtzoMx1xGsra8jdp
	 lQ2A13dJMtBAfXxdYRbdcKnS+sGPZ3e2Aydkj2lMhNhAYuZWi/OVspBFymFRmQGXEL
	 9NBpbih/FLf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D63C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704965432.9433.10511305755487763563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2160dfb3228c2d3eaa7cbdf33853eafa3d0e4bc4b00f9be9194dc91eaf3b440
Date: Sat, 29 Oct 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667049654
