Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460E12103
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE65BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678437305;
	bh=4dNCwMaTx4GErE8VYcvpqDeEt0q5MYNEjwDltcoAlx4=;
	h=To:Subject:From:Date:From;
	b=N/ofyIk5lT9rjN0yl9lHu9woy6+n+8g2rACiJeEW5ZMZ+ZSsFx4pmpJAU4uC8mB/f
	 NsHG9BhTc8Hy6MvO+49aVOgjnwl/eDfkSLHW2b/fpKjqQJvn/Iud+GtYLvlSIIV8WZ
	 WwRyQFOfYuRel1nlU+nFExWKXIVQi74BXhDGvxEXuovx+4ieC/ZQDcmUB4QvYfGsYa
	 i78FAyTZnC9sg8qeXJqgA70RLtNMdcoNMePD51QiIIC9OjfrI4lhBnanM7pGdcwcq4
	 K24D/T8R6xz3bXj10r/FK3UfbPQ4JphhrXGqjvOyp//B7pAa8cNaGo2IzCecb6g8I5
	 XPxHmpZha9K3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFED1C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167843730577.3999.3241931583358935323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12713a1e8910c18530085d0946507f7797e3ce253840eb4e1e3c8c0ff9013d7
Date: Fri, 10 Mar 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678437305
