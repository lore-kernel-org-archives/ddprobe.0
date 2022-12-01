Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03867C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8F0C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669867854;
	bh=EkP9OYmdxHSUUWilJlamnrxsqxe/1Iv5qnqKkzf00fU=;
	h=To:Subject:From:Date:From;
	b=jp+REdc/zNretMt+2Nr1jFVAgv7MhHy8mEIAn13bwhyyXUirwq+yl9wRZQWU/U7p0
	 0rcVMo3VJeI6BbYbwB/7q1tR7Q9aWKgnHBa5VzFuoZOm48je7i/VeJOElN3espzt+S
	 UuecFOihuFOnbHS1Kp/asiyZeps8qKHjlumowxk3NXibR4/jvp3vLNmbJUg25d+fu3
	 6SZI1Bz+RN6KoH7GcDe58KlVOTo31olRUB6nNQxVzUIB7O938x8sHt7tcHGUNC30qY
	 2DGzA3QC9MhCNoZh4fvrY6Az3qEUbxSHw9Vq3G3Rhh6n664b5oBrulRT3SWys3G0Bv
	 6LiWnLIJkRgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E839C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986785431.26660.17418387541558220310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447a069ef3aa402f409285bf0664c4234df100d085253b198600a3638a0dce8d
Date: Thu, 01 Dec 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669867854
