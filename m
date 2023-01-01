Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A3133CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96E04C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672608687;
	bh=0TXwrxo19/sHbiINNYAFw7l1S1WF7LQXi9rHyS+wW34=;
	h=To:Subject:From:Date:From;
	b=VkOuIZUtBl9qpvF9EkFCSoe7bvIFWxgGYFpTl0Ypnz9K3CiU8Q5jGFEguMg/ZGioC
	 +od1fOjbzlw78hq4BUgQQ44GCe3k2qasN2bEk0apBOnzmME4A+4XnHPFgGvJdg9X9M
	 ELmzNiUsHpWXKrtSW8wUD3khUDKuk+oZFGYGdwsXJv5GEsfU6Itp/Ep8Z5eB8F9BE+
	 DtTQlUziLEAcuGjpjmjHTU/t4uP0gUMIxBJLxWg5Tpxk7RfWRKcr8K6JuNGhFD1LDR
	 DZE9TQrN/panvd975cDQPHhFHDqvC9k3/mz1zHU1paDLpTy7IfmRrpT+3sRvVYLlXI
	 j3DsRTwZ8tQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79912C3DA7D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260868748.8353.3201838912826506304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac30690d351f1e94267918dcda8d92660c1b441a632e6bb72dfa80f2928c73a
Date: Sun, 01 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672608687
