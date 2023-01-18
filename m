Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50077B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95540C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674036087;
	bh=7JXnDrPoXeoQ5HprGcCqnckUO1sSDxmugidAaSyxm3M=;
	h=To:Subject:From:Date:From;
	b=aRFEzfXUqbNuKQbzbUQbVq99euqLVZpVr+A3xTpNuNLbAoapqJT9/l0B7eczR+dQo
	 t133pT4ctnss8F0VWQERT2vnGRV0w6c5BzvsfdFrEaiRti5qr7xDbhxlMo5Hy3h8Xt
	 A+I2D4ryD7BLyWqJHQDgOY8mG8zaY71n0Xjj/ppM+P4j34wra3meB7UuMDQfsH7/cz
	 oZ6Czt7Kw+VTD6EWuC7ehBZgjBWIZm3JlvtPXPOeOcttiT06Zfr6cTsKQGQtVnKhym
	 rRuG7VS5p6aqI7v2KbNRsh8pbX73eXM7Pq9oU3BgoNy50D6BkXG9Wly9lJupqCdJ5G
	 f+zJmDR5PSEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 712FEC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403608745.8901.13622361303486567227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a745670780e4a947136b303b6f137d116882946f70e97302576fde514fff6995
Date: Wed, 18 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674036087
