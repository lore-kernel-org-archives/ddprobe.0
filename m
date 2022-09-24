Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B6D18F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7226AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664023853;
	bh=XLz+Q8QFvP5BNaS1mP1rHIFuO8ljnO5nVwwqpmkyhsg=;
	h=To:Subject:From:Date:From;
	b=HayjMdKISwM71xx3+L7vCvkIrE4t0WPfC+5WESuCeEZMc70lDpQ0uxPnJfnTSSGSF
	 QnvooMorq4Chw0Fg4t8plJDpZhgGa9jusR3O1qt7Oi0JExVwjDGvkBTV5KbzQZtQNR
	 8cr0qz1kSnZSD/3NRTcxZpex8WC1Ven/NTsIN1iYEthFyhnR37zGtv9eFFoE6MnPbd
	 Yuf9vgogenLgwYUZEIYQEtS88+ZNtb0bH5im4FeATsuO2JckK02j2lRUGVyJuRlRvG
	 MqeKFOXr6V6RNQjlqEVOa+J9cebQn5c0ZTz9rhYSwY4r1Ng7/1F+G64jiWYEZWlhOv
	 rnwY85vcFn/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57580C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402385333.31628.1986169307689548316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c4f90b19c201e4d0654879bb7f5b27c1954a0d502a6f6998978efa0cc9e800
Date: Sat, 24 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664023853
