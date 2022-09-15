Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C899F4431
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71072C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663254653;
	bh=E9wqF4riFHZPHBSs04bhBf2Uj+F4vqCcIKsu/VoibmU=;
	h=To:Subject:From:Date:From;
	b=lxK9vc3oYleUzx/XVo2STwrlmteP0hkjkLZbK23lB/mxgd3xMRgxemHmqAbbA+BLC
	 +u80Lo9XuwmNwCybicb6qA79Vx10MPUx/wEvUd8Ib+SWZPUlnt6R9KlxqGFIV4UJsT
	 XwPXQ8IKEw8dAym1gw1QciF2fN53GmPVAkjUwGajM0CBTgpHTJGn4A3pv/LdraP1zS
	 Zxtb7TiWGGtlrHl7g0gn2xCo87RA6lXASLc2tqA7hXikjJOTXhPe5pspGcyIa5eZdq
	 jmY57Rzf7/uculiym+0v/eY/0ZDvwKCHzN7OSClW/XMny0yXI7tZzVEYJcjCXDVMkt
	 f5qTVuQOJz0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55304ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325465334.13861.9882636981557778891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc147ba14558fb8bb3e285aaeb06153f488c571f7b3946d33607cd6545bb6757
Date: Thu, 15 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663254653
