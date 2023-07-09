Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F831FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF595C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688893028;
	bh=ncK98Gb4AlYcrOtOV0sRwGKJW75s7xNLCDttnMc0U4E=;
	h=To:Subject:From:Date:From;
	b=We1dFFyXEDihMB0F3Kj2JvHtW5QD/aqwxh7f8y6aWquab6RasUSmuHL5wNycI5p7J
	 7kSJ0nFI27ZphSHFA4kCPgGB/UPr6Ug3y7GrCzTVr7Xdm2352cByJQl7gTPp1F4OC1
	 7UUs9RhbRSoBQHVRiFy0DV4k6lKBXQkISDOm693R2x5lwLA+cYO5FKZuWdG7T2Tm1Y
	 mm6MzTWPXfKylZxBZSCm+vUfYzojLBEUDhZRxcAZveamSK4qshVFBIBe/HmTkCdYkC
	 sdpQ3NHXKLzTHkKoy7lMMjmFEcdlLnvxUy9RwFpFSHERrAEY8HD850EGrGup0QtjiR
	 n8ApJIFWiiPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17D8EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889302871.4735.77194635025868985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9a6446d9d60ba2dae5fd25dda87633e04bebb335a4f92636d0e33e7b7c5a09
Date: Sun, 09 Jul 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688893028
