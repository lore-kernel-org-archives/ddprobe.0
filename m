Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9369BC2F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39FAC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688224448;
	bh=RuueEmjcqL+dA23HWhczGCzbyl62UKUOuOqMraN++q8=;
	h=To:Subject:From:Date:From;
	b=eIR/SKDbaIwN7jmlcIy3+exjpqme7SGGO+ToWPLUf5d+p1uqG+GxJBRRAgJCbgCqQ
	 IBaYhExxtXghzMHgsTev2Bfl+dKSYNW/3+96VVtsG/ezXJ4Sx2SDNeOsc4SzIzMr+4
	 NYgjo/zyKQcTUIX4UrvUVXgsUXHlWCernGop6IMjNgw6Xncjd7LQUeLrnru8bL8FrY
	 TRUKC2q2EMggBja59hXxkEYenPBFwswiSDgV7VMr5o1jAmDoMwXWunDbmfz5/2C6Ab
	 NuqJujlMHiI8wo7gTQc6nPt6fkQccXCyyt+NIYPXiKLE+NgNz432z7e0uCQZMKzgVD
	 k6TO7E/ni+vjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D1EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822444870.3204.17570981210014931712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53f9f1898b488daf567ba5a9dfa25c12e6ba939c37edf7a240b8fddcbba7b56
Date: Sat, 01 Jul 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688224448
