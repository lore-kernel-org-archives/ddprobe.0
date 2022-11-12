Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6167E2
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71603C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668249054;
	bh=1tqDwDzaVdRKY5Nhqj8w7AuDPED1UHh5QWvjHa9XVmE=;
	h=To:Subject:From:Date:From;
	b=ucXmLREWkvEH3CKC7S02vWBvQPLRBkFO/4T8M5TYyLT6dA50Rs/Ue1tEDxJpXzwOm
	 4hs+GWlWZrldWVFf+yIJ4TXaAxcygbH0a09CZtDVw6c1OPKsTVNWx2kMt4AaAZJvK3
	 3DuU6D93YYG1VtN9TrD84dmphR0LJC4JHHzBLYhbLERm2EHm8IBhZsYAtKCjAUrXq7
	 DYRFq3Bdasn6Kgx1VerrqTA2Lb24fc0TkXFU4jMnUzbptiOdi3XBQ+O3PiLVF1NVnd
	 /4iRanJiCE+JVhDzWiawFg9PevKwkdx84/pVMvrFgZrD6SlZCrpFbn8JSS1beiO639
	 YEvdr/4+R88ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C16BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824905434.26721.10961089883492220430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11ac8cf86529c60af084537ea0f0165a568f52858cc359d169c26b5f6e47492
Date: Sat, 12 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668249054
