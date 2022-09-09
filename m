Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE27622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C69AC433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662687653;
	bh=H1Pi4Y61HGeAVE9evp02ux9xO6CxtAb9eD4++LaBJH0=;
	h=To:Subject:From:Date:From;
	b=Mf3BSlxgGLNTBCYVOmRwP1p8cbsTpJQrvWgRQs47XTZa2jIp058xddCm4PouHNcyZ
	 HgLbgzFNNbR9WrRoQjS+7ytnvI/B/l2xEbldOhOmxeDqbFh6UQWkabU2EocK/kORMs
	 3CB/ZrEyRBwZentLTYgj9Q2fNCGwoWNuv3VkGDvHqLKoXEZSvhNhAzQu9Cadn68Ic0
	 UQVWzxRdmI6p0Hcm8Uk3HLg0af/RLzPZqfaQzMRYodpLQZ/jGPr/6f/h4DQeHV0ssL
	 OmMzljs6pARjm42Z/GbimkIJV3+STW1OxoGdnQkWzuDXr2GNcMe6RJ1FKkp5r3CyQn
	 4ltknshljZLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5130DECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268765332.6861.18009774747998495778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd474953a97b217fdea666fdb9791317faef85c1a53d89ca3eb5d206c005eb98
Date: Fri, 09 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662687653
