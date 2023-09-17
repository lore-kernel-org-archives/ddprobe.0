Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6CE4C6A
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 16:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF60FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694967308;
	bh=18GyWA9jqOV2CKAfImr/ahPjDL6I1VyCZT6TGfTS1h8=;
	h=To:Subject:From:Date:From;
	b=tVC5hF95oot85brDljXX3SbQVwpzeRXN9AJQ6GMRTICeOJUt/Ys7abnrIK0seNPle
	 P3BHfQzyTLU38i/Gvmqa4hq7DkcEXs3K1GYYQch9J9foes8q/9X8nX3O9NdKmEPRcA
	 nKNZ9O0y89ELQBBfEFQvqPdWWiWAOtKRSijcRFgAY0BkvTnYOdqnS+vLhwz7zUaHhc
	 MWA9B0gPfvsZBQw5/K+n3sQNTl1unY6xoSg3LCQLIjxgRk8AsIdArobLV9Z/2GpcIg
	 UiTgZ12xDC+Kwo/RzktpmE/K+5UUu48ygR2qFPc3z6lmAkLM+8nq/xoKcOVJSVFP7Q
	 QCj0SsSPtdOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F0DCD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 16:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169496730867.30557.9723178950211285518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6664d1f76f296df291a855f08bbda8bdf7d9f7122cf952aa592158e4cde5280d
Date: Sun, 17 Sep 2023 16:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694967308
