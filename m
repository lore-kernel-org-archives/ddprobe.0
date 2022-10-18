Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7911C04
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAEFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666137053;
	bh=hSySSmCqTwcqE60I0XyzZPhVv8waI7IJLHETpNuspoA=;
	h=To:Subject:From:Date:From;
	b=EK00KWYVvYFpgx/FDyzWXVF35fVlE+b2nIh+lYWmkjmuPf/UKw/1LyRtsWpI1M+oy
	 dmjQSwAGwOEUaBbpGqXp6LFQ1v2EyyqHxYJwiBPB2faZCZBvhOVZL3f1QGopA02Pxc
	 pIQAwMBiCf85wfQvjymlTgEgPIBEvGU9bbJdd/SPgD5RBh72GXilkdnil/O8jmp7gh
	 t0RE3aTcfx2uI+vRv9oaQ1ta+fsZUrJU6vOrFnJELGdZKzqJVEtDVYPqLqlSMVS9Zh
	 Zi9UD7QtQrbmsDkJYkn+Z6JvMYRyH/w3oFYWIGnR3QfNslyYQLIrIvOaYlBirM1kr+
	 bMjoP8PbDrnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5279AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613705333.30215.763862152436690571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a382646e24b5af8811d695f7d40d468fda480b0eca133b79d0dd7c313d0a87
Date: Tue, 18 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666137053
