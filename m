Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C649F7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E96C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668758454;
	bh=zRNjAEumrhHx8QrR/J9sc/fMM1rgeNLM8T36iab96M0=;
	h=To:Subject:From:Date:From;
	b=IqWSVsRCWICun5kxa/OA2V2lI7hdEfMCIwEbgyWcjBgC/PfbDxEbOgrEhOTNwofm/
	 Vs9mfiXybFkfozAOqxrQ9CBSTQN0mdgc22dpv+OuHa3i12aHiq5GqIWNGCg4Z6tGo2
	 8QiOEIt3B48/eiRUr7cUBWja3bPpFdwKzEtKbfqsGLxKZcmgimVcPGL2WysF63FAQh
	 eAxrL5Xt9/H5GmyG46E6U/p5FIz9BObCefh7tKa3c7WtXbh2Z93a7ujHprD9XfZO16
	 F2uxq9eUPiwYwRT5BUp6ap9fTsY1A8ugBViTKlXPmJeGMPQ4HLYmleUz/F9LYStmKg
	 +CD6LuzxWq8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FABC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875845434.30480.1767632506678961284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862019f7acacc5ede81cad0a0580fe02adcef34a1025ddf6a28092991d0e519c
Date: Fri, 18 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668758454
