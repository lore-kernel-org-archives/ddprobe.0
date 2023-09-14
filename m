Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB63C05
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 22:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60C5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 22:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694731508;
	bh=XWoO16fuPUS8HMJ+VwMvgl84lpsaIlq9YODNe1rsNMA=;
	h=To:Subject:From:Date:From;
	b=jn4uUCD5ZmgytA9gQGlsOiVQZ+Xs1++J5UEbZ2QBO+Z4XWX8bWfSFzEhRXlZ1M+GR
	 9tF3W0lbqElLfIajHG86h+hxsmegx3mtA6Ql+tIPhcts8pRGQpZUHO/B0no7HE5j4M
	 YESwOuTJgdM3jUhhj9ZvmJLa7oZgLqPSP5aKJN8KN5Xsq1z+/W/a1BKBymywVz8OIM
	 kbCctvXSCLgVvWQLc1qyPdFx4JvBGwfWJ8rRHKtlanjVOLoEL++MifbERDKTgik6Eb
	 2K82dojc0De3CHZ9oBG7fXeMGDSY+YHI6ua5XtRpBU/MIbO+597IAWxXwTLu8CjDrB
	 g5S+X59O9U5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CA6EEAA7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 22:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169473150866.13836.1601215236098682966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3109d149b6c4a7a2ce923eab36e067d571ba765b638a5a90fabf3fb5b05be9bb
Date: Thu, 14 Sep 2023 22:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694731508
