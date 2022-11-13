Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A2D10F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2DDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668333654;
	bh=My6RREiT9Ir3gVUYH1OMe0Ep0Olhj/DTMIczCiSpYec=;
	h=To:Subject:From:Date:From;
	b=AO5RPUehGYWqclwUnCi5lOXIGOTCdLhUTN3r8HBX/gjgcXv9Zc53TehOgtwMtoxmd
	 vbYvW3oQszwYm5E8/6DUZeQdCR8oe7Q6h+6zhhs3kTEWKaMhbVn94g/j1G48I/9i7C
	 eFaufsJR1Cp4OCvZOqSoEm78l39061uflWdiTV7+uMH+3bmpAHw5Dzj3vhRK5KMg54
	 8h6Ftx8NzA9x8N6ZGVJEHbAIrMsdl7oMoYYBlELnvoFAnxSL25bZtqMK0fF7GgBfZJ
	 UlSKstiX8VGYDPxMcIafObd6tfHj6FSoBBImX6+HwrnZkcD88ts08S/kgH4Mhu5o0f
	 o3hIjMjuYPk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E4AC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833365433.18498.17257170713922476357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6a7b03c3715d49217943d369d17e3d441c4d979c0dbaa791816179cb987457
Date: Sun, 13 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668333654
