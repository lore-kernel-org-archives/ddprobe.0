Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A071D532
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPFpT0Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84406C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704350296;
	bh=k+PqDLU3iDOHbAUzNBbn5AfifGRY7PiS907Ti0uHh/Y=;
	h=To:Subject:From:Date:From;
	b=iPFpT0Ygn6f4awQr4EC08FkimsYBlZuv8QNfbdlf7R/OmZdQFMS+wxZWBgNFvjwtu
	 1WRddO9z4KduRzErUhPzYvOL2DOvGjho4N5D9L6S2M+FUbXiqz10EHRFGMu9SYX0bY
	 neAU6xkc5dhQ1wYXK5Q7tkPPDhi0kzicbxM6reCRVSYu3YsyEQnwC7GulAXELcwKkH
	 YAdKHTwiPt8Q2eXSxNvAVxqdq77OGTkY2z67HW9CGmwSJ7F7s6ezo55Xfenq0ef11L
	 fzsfCsT0vFtmfTEDNs0MGGZtQTEafv6Get1QRSLcWCKuHOvZjR6qlmeWmh758iFFW/
	 FuxnbS6GttDZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E01C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170435029639.8332.15454863837874825650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714e1564ab1defd70111ad72e6af686f39901273da510f16aac5ed20c4355685
Date: Thu, 04 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704350296
