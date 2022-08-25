Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15D57B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7750AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661405452;
	bh=Ww/Zx3eYcK6fMeU+7K5GTNNQKbosLi6o4h58p1CAAuU=;
	h=To:Subject:From:Date:From;
	b=PcaF0HW9GVyPfcsWLYhuwTLER21F58TUSicODiCyCPDXR84cpKerI8DKzxU8wTeEQ
	 mymdyUe+4qUyLelxLA1EO/8LdVjLTRbpao2vZz0WKHiZlbpnoGGT8WeYQy7Bfz6P8k
	 d4HLO0x83l4a4+TXP7ekMol8dStCYRTVZj6l88Phcul6dpfmWYNZvUisVwh4v+ilqH
	 TMA77hJFdY6rU1wZAYEA4WY+WOUI+Lhi52xBW/wui5u96NuSEeUzx56016pvBcAOaF
	 gZlQZlGUKmpYbnyZE0wrfgtVH2fZcr5k/i/ojFVYtNW0VttAtLHPLpb4d2aMwuI2EY
	 O7y28QZKx3H7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AED0C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140545234.32084.5378696899219304274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f169ce64e7e293f42d76a69e98a8fe41a48e3679c36c0a7c52b3c4ee96697ce
Date: Thu, 25 Aug 2022 05:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661405452
