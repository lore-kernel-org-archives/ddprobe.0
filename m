Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9533CA
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgt7+vRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A49CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701592096;
	bh=VMQCw5ptmOOWRjEl+w9/XczPwgZWBWfBKq80r8I20qo=;
	h=To:Subject:From:Date:From;
	b=sgt7+vRzXYxqYcWnaWZmqfzm7HH+Q4aC1MCfsAEotQVy7qcdufKblAy4AQNYlTV/9
	 L0jyx1559vyC264SQZEdS0BRYJO+b63t+0Nv273jl/lycCgrPInzqt/vC2xU6URJ4q
	 6K/fI5yISsEpvouPQldGylqF+880uhe+mZ5zqjdl/BVQavdbdcU2t75fzUiilRSaTl
	 Ot+DmCuhK/gF1BYr14RSfEbvh5Lb3TjHnZjVvxyaj55O2p/y1H5vD6Nku7fjJAHO8n
	 dXIcuMJPkBw08BFTDBT0jgcHmTbdTjhBQNuAD//lDNt7m1hhEatYKi14He4AvBNWs4
	 dfg6Y6LcMf6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E473C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170159209637.6422.17727500244191313830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbd9cb1897c9a806d3b97d6e36f3d6cf77e7bd79a252f1161bb9fd7dd44581e
Date: Sun, 03 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701592096
