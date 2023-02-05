Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD853205
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 22:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5341C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 22:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675636565;
	bh=noE/hguPxvz7CRUEogKiexM8IJoL1fzpQnPEx89TOqw=;
	h=To:Subject:From:Date:From;
	b=vFVxMz64OrO52rhchcDY4jjgZDwNuT0vp56gvbhDQ9cLfK0L2/rB+AhLTm7sOPd7E
	 d+8xx8HkD3ENFnN47enQfmwq/Oc6RVBUwEYAAjih9EDEa3kFkY4QSSzXZO0Zmr22aq
	 noPCcvuU5Cm1bAixwHB+VzXbWkDHTVAbiaall9aF8rRxqV3KBx7zVZ6TUhSFKfNDDo
	 BlNEtN9lto7qBjUK22i25SpEDXWri/gUcL9MdvEVo3yJEDqaaxSGbFXP6BzjMK9c+m
	 0yA3gTYT2+gvie5rMzNGm/iHTtml4uWdmx/k5dGkYdY3F+LHEIY+T+yaGKb3OjzT4O
	 DpRguCypnvvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4032C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 22:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167563656577.7456.6732348856286421481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae036f65481a86692b9227c6d6d04013c0a06caa562f04e2b63b906f266d0144
Date: Sun, 05 Feb 2023 22:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675636565
