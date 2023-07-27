Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559B7174D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 14:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0233C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690467728;
	bh=zBZ4qgGrowjCNgrYA98wQ7tJg1VBRD42fLbGhAWpy3U=;
	h=To:Subject:From:Date:From;
	b=HUMFcuyw1bfyfVMwkX5eN6j3PraYGrlt5CetBxoBOZz2EKnCp1Y6ZUvS0t3+LKU3c
	 rHa2keflI0keqfDKesSOeEW1GBRKs524WUkogp4r8WCULcRTVDLyoVDIU3lZuDTt0q
	 nZgrvIaoRRoObovrPE/kvHv/aIalYMi9BvU7QC13fy7qEIWNhtxbbjb0HwsAXJakYA
	 5XZ/sNMpYBjQ48xUbceMHwaziw7J2+PDwCkDCPLKP6l08RVlYq6FjEWUMFGa3nVjhz
	 fJUMdHTZuF+w/16f29/42qoN0ZZWpI1NGape9E6KleUrbjOtNq/w8TIXlt6E2RGNW1
	 DXgdkt9OQ+VYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA1AC0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 14:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169046772870.30666.2389918029168019524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677fb1aa4592a3eeb155b2bb0e0e5c75f7152e4b33e44f6cb3125d6bf9fb6689
Date: Thu, 27 Jul 2023 14:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690467728
