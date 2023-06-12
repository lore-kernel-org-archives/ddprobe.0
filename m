Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC571F18A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB07C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686586445;
	bh=NtAojb8qN7jt3yO6YjBqWrwvG0Pmct74EvhBBf/0nTs=;
	h=To:Subject:From:Date:From;
	b=rsuJtV/aA3gFoLCWySvnSQ/GxyjLhpz7tp8oFDM8+WAvDHX0zDra4Pif3OdBNqgoB
	 GdpMO6SWCbfouBPxn/gZX5lioCbevQkPhmaLIsK+ysdzX4pcdR9WDVa78HyTdKKyXk
	 trzIB+4dMQsMQ4udCeJK4nVVWBD3HzEtmyuy2FIYGsqoS7yNxwNXJdy/oZPGKSKFIC
	 U2LVvnai/WqznHVLHpJVgjaGnQwsG20GHFDsxFifp+M7VV21/k848tPagSUaEZpO6R
	 nvL34I4igHxaA6nRoUfLRjT3/xY3xOJnRHfp4Z2ons3NuEal7rJEv+od0P/uGgdNAP
	 Vp6XPHW/niTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF21DC88CB4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168658644577.727.16576089320922679961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af7769d116ccfc534378dba9044736f1489ca910ea8d86546017e0e871d93ca
Date: Mon, 12 Jun 2023 16:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686586445
