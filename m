Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84F82CAB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12EBBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686508926;
	bh=SkJY/Vp6mrLOeEfWm7hhLy28JTKsSUp0pZqvhsO8Ts8=;
	h=To:Subject:From:Date:From;
	b=bfLZwgL7OpCqLDmyW34m5tsZI1h5kCQ+xyEcIRZ9Z4Y/sTHaKDHyqPtCmKf1JCn7X
	 Nj7M8KXsuhA8bfx8rh0Lt8ec0jbDxYoyWOAzMws3tkvRRNyaf6iXP8etFHJp5RsgJU
	 kgbnFRT0607WhyNdmL+vkZbx/UaV98fwfXXcB8NcSaQYGjPWOYH9/DcRP4uDLP1sfa
	 mlrx3+hHZcOjGJ0WBh0FCiqTrJjjK3yUjW6T55VzDfC5V2qnUvefGS1ZzzY8Q+4pud
	 KA3fEl1jmX1YOUtS+GFqQWKTYG0ynHWjiQzgPZojzXsnjn6CueZi2Fqbx+12tU2EQh
	 HtKkhbToohHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9013C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650892576.28462.17219388841842677395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cbf3c10ed137e7162c7cf094b4329034cf6d478bc4e57f67b03b32e23ace48
Date: Sun, 11 Jun 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686508925
