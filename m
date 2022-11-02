Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C740E7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7F1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667370654;
	bh=Cg5x8hg1uwz+cMGMnBTsc9qUx0RakeMXaWI5aCQplN8=;
	h=To:Subject:From:Date:From;
	b=roHfBwc2PxM/yx1DifcQ1QmGv5LVUz5YVOQQZVkjeXUHsWHsPsnfmbGAjNUf+a3/V
	 tPbwC306HLy+4S/xzz77PZE+aLTUXsfXsjqjilD15RG4ugFLHk06jdfpI2ic2dEcfa
	 dTJUbhJd09+QKkS0zPU6TUqXgunr+/nlL8w+b2OSwNTNhk4+dtuQtZFVOPs9rCr8JI
	 X9Adn1O0JqVsSsa3tfEwSaM/lEb5/c5eT9AHtibc+fGXgUtZb9uPbARuJBP7GCPlsg
	 11fCTyRzwJG/EeX7tln7RaOMWYJutycKaAYnOeduyF8TZ5ybs9x3s8QMISksDdGoda
	 77E8w6ABwLQuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E2AC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737065434.28234.9569055910780641714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22492fc2aa8d637583adebd2ce2b8a7646afb7e6b339ca81cf0d9197b358384b
Date: Wed, 02 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667370654
