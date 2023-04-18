Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8292A23A7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37CCCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681842606;
	bh=53OF8ljJirWfxDmBFwE3KRy2X8fvPk9jC84y5un2XJM=;
	h=To:Subject:From:Date:From;
	b=IxtsjuGTEPPPlImIQfsRx+/ilh0bdmNcTJHp7n6q6rhFSmN8AdJNZ+BXU+QEp5xv/
	 Kh6gGsa/+78Z62g4oKAIKormheKAadSO+/1ymJkMDQF3/f5tRfKIebyaEw2Wd2G+o3
	 TVBHjc147J+1r/YJ45WdimwuKY9FUavRhLCOmw1BUPrkikG+DFKzRyotbYSgOv9+Cv
	 zcVejoVEQBD0v0LREML1v4eMYiWbahjZOWuBmEJtDBiqAbGN52t/WfeJqXCCL1/BTB
	 rE0xVmeqdem7loYDDaa8pSy4ElrUTXSU0LodJrnmbESUJatP1/HgqLyksOlEjmeTsT
	 M0mVlG2kqiZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18DB1C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 18:30:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168184260607.15841.10893797009510632796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9242c5a9008ba14b81e6879b8637c4dd1008aca426f54b75ee70a89769f9dd
Date: Tue, 18 Apr 2023 18:30:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681842606
