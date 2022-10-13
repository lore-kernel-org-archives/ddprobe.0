Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FF54429
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A212C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665696653;
	bh=rfk7JOLAptBRqjROr3KOkX1GPfCgYHqSIjJ/nXoU+Ro=;
	h=To:Subject:From:Date:From;
	b=aDbBB/8lUuSMpg9bA0E7aDLjl2CgpzZdWOpzh8ibYS4fOJJFoq6gbTNGrpHVQ8XOj
	 g5fepErFVSeFfLumEN1juf0aDlZmA1q4guy19YulkmJPaNIHZWwUgfo5ODKAmM2sDI
	 U9oJ4lpulxy8lWuK7C5pvjyL0rNVWzl9dBO+o9b0eFagrjJHxe0eiLu8XTJbS8muQZ
	 vFDLeuPN8JcpGDlCmA8tp9RrEFX/EV9CXlGeAOyfuf0dRdWGOzXT9AcP7zzyV9L0+L
	 4YXmtl/z5jwd2+N0s/nvl/2C56nGj+5+YN/SblsHfgJs1QpAPpmSiuoS/3w6Foumfs
	 3sP3zS7Ix1DxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CE2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166569665334.27227.4732417883070335009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff998cba876a1be90859178867c333789c4db1bc8ce30b21c69cfe08d672f617
Date: Thu, 13 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665696653
