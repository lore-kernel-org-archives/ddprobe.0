Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877641097D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBEC0C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688677629;
	bh=4xorcISCl6hLvZNfTVVZmjMdE8IDv2odPaRR0qx8nj0=;
	h=To:Subject:From:Date:From;
	b=Xg75F2iPzKPk3pzEYbx/X2fC3/QXjNXQia+mI/768Fpa8XMloeYPtVWalf3tSYpIq
	 FfMfvGyrdxA9zXdjt7SXHt3Sh2QBXCk9qKZ5isELELEDJB9KrMQ/7R8tX0p9YpqN1p
	 dazcZmIGtnLOeVGs/kpKd/aDTSZ2YEF2LX5b3iVotQLLGhErJjwIQqHcupDJZNppMb
	 xhUWQ/d8bA6y583G114rODGwR/7IFzQY+LpxIAkd1P/1HezdpHtn5KI4Uwft5PfYXh
	 RvUWhuD5cD4cjgMFyi9Doth+AwC0Q/fLItSPKzqNXzvrg1dSfa7kJtHONGWONkma8o
	 Qq4Cp2ZVCMHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67FFEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867762879.5195.15301902504929198524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4607d2ac1351df37689162e365eb16cb61353dca3433c4bea3a7a75779cdcc98
Date: Thu, 06 Jul 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688677628
