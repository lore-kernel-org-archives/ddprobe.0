Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DB963A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C78C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671954687;
	bh=DZtsBoBh2dArGdC0kqmREYNNHxldUI5Phrtw/inAZxQ=;
	h=To:Subject:From:Date:From;
	b=gxyJ9Yq8zHaOPCKHXvBJwOADskQellRvvlnZfHbWN8+uH0ReKQx8Q6LVhkQqzbgBP
	 Eubkm6HkXQxZ6cTB32vhZdF20UpRq3dQadaWY+OmSC+hljqkDoY+RKFzvTRNOv4eFD
	 HG1i8ExDWk8nJz7QBjrZ+witgq+VtyUhYgDmvh4hEYnw9m9fwZxkJvm2XWZvOyUlHM
	 ZtKXkH+FnEbn8v7HkYHdz72QKMtxr1HKkXWZfya2p3hX8F4a+3fkT1UcBUxl4lNcqw
	 nE1n6UiIeV3xBESAz9viuMnbzdNcpsiVr3ShyGnLcRBnjg6wKyFr/9wtu+kA/kgDew
	 9d3/It0hy4cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674B8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195468741.29657.12434776200532739202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7728960bcf26d7ea808752f650e0b91a1fd146d7ce10b7a0b9bcbf239989341
Date: Sun, 25 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671954687
