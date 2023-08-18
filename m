Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D98962B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EF0C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692377648;
	bh=4v+xkNuLgOkQUQvueHOw7rDqzFNtWxM0OVi203WWWuI=;
	h=To:Subject:From:Date:From;
	b=VW+07sbv2U9UK/yqfZc3iusCdPHNpvHNEWUi/W98sOvX0H7iPmbWTpU0EI8sAYXmE
	 MP7TbkkvvEu++gceM6YH391TVf2s3t+NevOh6/kg39NCwAstAGgiB1j3+lzk80Sq8B
	 3hbi/CmazLEPnUjvanadzd0X37DIBguFCZEDOZZTD6FXXp6k8NmMP+iV3AV1Lyh4up
	 4Ntkke24gBw5tgeYkMOvhA0J5FG3moEpBBSIjtL6oShoL8Lt/U+2wTxn01rvb4eRiW
	 Qn31HOqJarBcCZj1P3ThPuf3VQ4HOdpFoRedb210a0+Z5YQIIHHGgEXOucJFYf4SBY
	 M+e+ogeIEPAgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B10C71159
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237764877.1767.5827438064860050928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63177248fa44cb7e40d7a2cf046c81ef28b5ace318386f791badf304714beb73
Date: Fri, 18 Aug 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692377648
