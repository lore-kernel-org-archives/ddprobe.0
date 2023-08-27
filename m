Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551ED190
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 02:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4DAC433C9
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693103648;
	bh=8c4OqR1EjYEy8/xZ0qIytEz6qbd4iuydHM/Mv7gJ5Js=;
	h=To:Subject:From:Date:From;
	b=YvNr/ZEqBt94R40DwTvqh/DtsNpFyjbdLmwv2xNhNQPTb8D33grkfx3U79FGE2f9D
	 NYAcZPr3+edQLBkdXwlY7FLCYdH/1dTX+FSM2+lhlMHage9r+cfzLpXTiiYBXWkVPJ
	 mVUFN0r9TZobW42GDsgGzQxAXfmAuJMA+o2QWIPgMAS0KgPs2W8sPq4MN3IEeG3rE4
	 bGV8V/Xcaa4Scl/LA40y5+vWLpjsZA3PdZkx7Uu3L41Bx0b4O2qBSR+jL5OLuYMYEV
	 v3/LxYRR+CiQ60ITqLRW3r5cn8hmJZ1oDatca/dgI+55tSC05Me0pfS+RmnKO40IAy
	 uxZJrlUE7b87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD784C6FA8F
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169310364870.15535.2823645784581180662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727d4ffb79b33dad662f23f033d21ff027abf7a692ca8129be28a7588a13e539
Date: Sun, 27 Aug 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693103648
