Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80741364
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A7FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668952854;
	bh=UQBowUYhLKYKhaYLilyE78sGzWY9m1q3337o6EA49Kw=;
	h=To:Subject:From:Date:From;
	b=KlmnYfZR85ID9sqCjF/X354Rz9Me/c/IJ7HiMQSjDzZi6t1wS1SgH725q9GB0uWPt
	 8a4sBiSKgany8ntxN9kkXJcs/ZUB7o082XknVAJsO1/vBUe2vR6bZkQcmoij3uqcg6
	 jihNydzAgbl6Db6rifO5R0Qt/K81tX9wLYy0r7bYxHb9vlk2csb80GXxN/7nh62yZH
	 1ethXPGilAicAG1I2gEiT3aElGAbyYWd32pReiFecKip2QCe/hE1sV6rV/OLF04LaK
	 pJKIE8AIjWISm3uyfcc5Of2+zNhtBLPMRiNKX9+ZcRvSFWVouEdaNKp8j4rb7op2aK
	 oZqXKVrMHU/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5866BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895285433.29784.15684685531992980184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f1ea4d5cab5c388dfee61005b3e790bf295bd43ce3bbc1b9653b53eb06b4ec
Date: Sun, 20 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668952854
