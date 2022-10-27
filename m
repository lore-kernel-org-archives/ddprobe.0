Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38037B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0F6C433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666879854;
	bh=zW8xjOIx8Rdidi6vJ5sI/I7aQ0ov2L4q+F/irhlPxlM=;
	h=To:Subject:From:Date:From;
	b=MaC6rszu4AIhCRNuq+rBVLVJqnaNZG/33wFMvUUZW63EaOk6lemoxIhQLHYfuBz28
	 ZWUCw9mHmLaPTDhSj+R4yJd3bhLB1+G7XFTtctAkAiDnBeJHjCaccxq+AKkuqTmaQY
	 bsTjvdVkvpy3e+hl3OYHWDsCksEd56stPipMdLOrE7VvXlJI66AjgA/6uV/C64bOWC
	 AWkKzoQkKVM109mUThSvIT/m3w0m/wac5YEyzxxsJLkUw5pdLvg8YNeKaI0w9riBGd
	 4klIj/XD+esdUrJPGG1WQo+8+gW+BMuW4eyGhp5+AFkX35TYvoWh9rSubdsv/U8Ofu
	 0lq1t4Lmd0ZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB86FA3741
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687985431.14118.703830306684639554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a089723667b7ec72d5a2b6d1452f93f123e4116aa36903ae0677a99a893ec2
Date: Thu, 27 Oct 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666879854
