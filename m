Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C736B656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D81C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663487453;
	bh=hzJJnwResxAEBL6b38Pf+l37NuU/Y3D7g66hglGFebM=;
	h=To:Subject:From:Date:From;
	b=utNfadgqgw53ha7sUmHPXXGBydoh6WA2YkxA8N6e4GUOEHnuKQVVwFDoFw2xe+MBl
	 zy30TejaMZVd+PWOoH20AYMnbKaeAWgQCqvcjnMnjb9fQU04oiPLjU50ZLcqpYbQ/x
	 jk2WqhDPAX1qJfRrEmsT8E8at3LYAlcM49HeOHoHlIkmfxznndxHa8kIIAzpKuD2Xz
	 mwi2zXiAt1SeNbsFcQzRkDDsmb9ycwjT9CJbJG3doSU30Vp8tGE7Ti6wD1gVM8/Erk
	 Q124y5TSZWSfaIXbRfd+lKIOobxjUrPk2J6wqODX7Q0IpvO4pCkx2mgg8opJzzRMHx
	 umH03kRWnoOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A28C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348745333.19685.793782543821269879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af041669fbbdae1ae3a1c04c57a2a6d37c18ef5a858f790b2dabc45114e2d429
Date: Sun, 18 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663487453
