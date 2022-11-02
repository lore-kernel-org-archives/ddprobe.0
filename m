Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89256ADD
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72521C43470
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667403054;
	bh=OYqJqzdR3gf1tDkzGHC7mC+P7ExORotRJ/Mr39HiOsA=;
	h=To:Subject:From:Date:From;
	b=eW28qD9YBLOP2GfW/emhBjGoDSd+sX4DyYh+rlwnKlcFHZ39oXO1kWD45cpFfYhkw
	 KnbUaxDEgunWS6miAtFH0rCaa1/aIvIW2rS1ZX43o5i+GvICiLhV33Y0bs30fJo3bq
	 bw4EtMOY2+ZGu1JZA1elCi5wPlNQlcyvC5JjDqzrZlANBIhw1+Mg1guD7iNySxeu2Z
	 vx1YWH347lL3uTWfZYpk8rtS7DMpqip65hUTY0mNhB9edJrnnLHSB6YLr4ZrdTHktH
	 edOEwpxQDs0IDiog6+eTuivfQBNGHu+v8IJIX0OhduXoCvB9cuN7rzU2+4GFE7tFzj
	 nwh1wgUTj+c1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BD1C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740305434.17254.4700208184379084263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a97fb5d829628272815532824a5c34eff798a32c907abfa43d3be797a8441c
Date: Wed, 02 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667403054
