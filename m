Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFABD7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65F7DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666558853;
	bh=MnjMlV8aLUfZT90vmh7+IpNUtwR8AAChIV4Jigd3ixw=;
	h=To:Subject:From:Date:From;
	b=rab36fDG6eWPUaZaXYMBR8n+SHYtuTO52K58KF3xcpWpx7xyvRE9bYCu7H8k1zhNU
	 2nJftxK0OSci01gAqvGWOxS8WNWuXpoN98aaIjqxW2O7e7r7L8xKFZNh6v1/0TA2cf
	 PYwT1EndEJvoyIVE8X/VykZ3YwsMOv/QYFYuMZi9m1sWDMd9r8lDCIfA1fPNEc6gdD
	 AaNG7IDsR+F5PeCCHeVuGXCf7Echh3tRqezhhvPifrQVreHA0BX7vynGs0iPnX02+j
	 uEk+ak2o6LBfkjOZw00YM/o8T6Y9lk2Wv9ffO61tNOIcCQKAK/yRSkSZ5cY9p90O9l
	 Y2slQPWQtb4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500CCC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655885332.1092.18273285556790506911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6065c118bb9fcfb5932edd09084f05fa24b3a55b6c29c40cb0ccad3d881a82b
Date: Sun, 23 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666558853
