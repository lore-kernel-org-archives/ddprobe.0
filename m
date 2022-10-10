Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21B87E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED64C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665364854;
	bh=n52an63kctnZ8ElhDclk81nP7ofiqmJsssiaME3vcS8=;
	h=To:Subject:From:Date:From;
	b=grRdTDh06HE+2bmWvgiVNZnvyTG4sVb9pWidIxGEsvHhiFamFwYtzymJOLhASqlzJ
	 aDPkppCjuopIjuN30wceDnPaaZYNY6Lsubl92jMGw4/PsOTJeH5n71zfDRv7TtNys1
	 ngALtI/bmzkCqIb+HYIrwaHEHF2NH05OlOcxKw3JVedMS5myGT8aJ0FBEZnwcvtIVK
	 B/8+ukpKvjd7gukrW20v78RhrSJ3+uP+A0Za4kXLS1bdRGhSZeDfroosnVqAwTI04a
	 w+UPUnGaWqL3ekkj6b38EBWnO64Y4hGNvaZqJqOX2iRRrALKQCuNaPfEhf9ipJv9ub
	 S4vq02/K48YJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536485333.5746.17500356132667880063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a7407ea985c4924a7d8b080faf8541a6f7bfe13fc101bddadbd8e0117bf69b
Date: Mon, 10 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665364853
