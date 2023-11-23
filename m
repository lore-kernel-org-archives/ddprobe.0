Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57D18C0D
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN2OFpoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825EDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700727496;
	bh=b9bVxBSQlEyIDe4p3FrgD9YIGaF7hzn/c6/FMQEkiws=;
	h=To:Subject:From:Date:From;
	b=mN2OFpoDRh1c9mQvA/uwUrg5v3a3Q+LYHV2Tgx/22vK8HIDVlnn0su/PffEnsFnO8
	 6BatwQOXG9Gi5hmIP+XDyN8DDzznh2wDNUmlxyIZv9zLorhalZM8LmZuQdWaWLFdEK
	 6jEUMxfqSfTjj/+KgxhQ0ME8y3emayWhWmavf1BwR14TiqNc0lxmc9uI8Rzj4q83d3
	 fpzwiUagshrzk8avDZAhTicYlQUMfO7khuXFaMVKnKFFdgFyjgoz9Vp7VH+pKD/VJN
	 cOaC0iAxahoyjGHiv/1RQRL9c6iscc/c7+8nJDGjAwB1Ra/0pPAKm5WQSkwMXvhnVF
	 HrOF7FLMFAa0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645A1C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170072749639.1420.9548181112325647035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c390295e315cca48db3176e7ce6e2a9469dcf0ec16d77a91bad578531169b3dd
Date: Thu, 23 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700727496
