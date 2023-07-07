Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4D95381
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDE1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688756229;
	bh=gnQnn3NjwgbGqVbYnx7zbWzJ3QKSzy+RhMFXaOZl8NE=;
	h=To:Subject:From:Date:From;
	b=C7AyFG5J8GDtES/InmxwyMTROO2JqhIP3JQPU8dCN7KSAqJslkcqd+Lt4GY9P8zYe
	 o0xWOsHu/IybbwVcdon8/Qbswi2bXpDGRWKusELB8PwJm0FaeeS7iZXZjRKd5iK6AI
	 GWzrFT56rkSTrWW3QVGBfRv+ks1dMXSXwXQewx2PJS/aizneP2paWpicNCKAnQ3YxV
	 +0Ceij/d8JcRzdVWXtPgtw0qb83maZTAI6x+Y7Q8IuKXpLpf0ML1ULivfkLl68Jq8f
	 /tpsKHzvi7FWKjmG7iBtAi9PdmaVf8eiV4SY4fq0jRghG4LGIrLqpOSvy9Y9WPmJLr
	 Zgp5efxsjDzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FD5EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875622866.29102.9498137617627992192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f9a59295df3f12007c2fa68d13f1ba600d0827da7e1118335d983bba6dd498
Date: Fri, 07 Jul 2023 18:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688756228
