Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E41CAD41
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07DDFC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688660229;
	bh=5CYpUsuyTRAIIlXULVHdw5ycpWE5qws4mHEP8vjBajc=;
	h=To:Subject:From:Date:From;
	b=ruSdzj0p3ovJSyYFcHesM+K6CzS7bS36h/4OkCn3uv8L4lPHsaJOH7y5HPfvjSCU8
	 7EkbPccSWgIZwaREdTU2hMAU79KDa4Lh7H7VnY5u48P/fHhEE/mJj2DSxKdDwgBLPX
	 hOrlNBKwGZ5g/escZCZKuj+b8VzumSP+5rck2+gqsCOurl9xz4wgmMKwQshBrhFHgF
	 nVOeLGBNZ7AkPp7gixpOMuGkE4xVwlC6B0jS57bi5NPNszzIWYuPSsIDtwgcyjpfB3
	 9kFuqD5qAQ8IlOrgybvF62ZeD7yddUZdYZiZGH3z/nMr4lsmiiKcf494nnmsgpQVS3
	 tQ/17szT1kJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D61B5EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866022886.15803.1707243824475597496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452367440604a0eeb43968f8f1e11567b013e6550abb6cad6a15d6ef54502f39
Date: Thu, 06 Jul 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688660228
