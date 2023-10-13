Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6623914265
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr1yhebw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7751C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697200628;
	bh=eu7vMtStUU/tIwDWcgP3sJDYwJWgiJ19zWjnrWjEkss=;
	h=To:Subject:From:Date:From;
	b=Dr1yhebw97PCJPiQslwN8d22bmCYC+GGqcvZaQD6cOyUSrNs52zoaPvcDbJ7dDrui
	 YF6SCK0MGHxcQg5lsi9IvHIYanIp5pyqDQU0jd0sQyVJVQxmYBtLNL1qZ6zwvQFjNE
	 6H6IHLiDqHwEuiA1d8CZ88ppdpdXUzEH6pMc46HI/2PjMG2kqP9YzyzCB8h7kuowqz
	 Alm+z+ImTcZq+xwWPx71OHP5r1bp7AZi/KdzFPlzBWAmvpEfUuKfBqxm3eK8jQXVRP
	 ux107fj3JFjudOWaqbdgi5Ms9bDC5KxH1/LKngWUasfBfaDfqvF1FRi6kGO5qQvZDh
	 CMQtIPkMzreTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F73CDB482
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169720062868.26904.6998709667941210027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10cc21aa0fded43278aa09ce64d4d06d5a79c64e149546ce2ae40811305f396
Date: Fri, 13 Oct 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697200628
