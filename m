Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17433134BA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtAOIB3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96575C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704641296;
	bh=YA3TTAv/iy/dtdgf//CsYtmJRVr4Q/bKcmoMJTe0f+8=;
	h=To:Subject:From:Date:From;
	b=qtAOIB3EOtPLvNwSd/CjTQhN/an8BvGl1SDmdPmI/KndlcWgT41BTS1mchAaAsrZ/
	 3zZiF5FbZTRJaRMT77jqiuVnKAo7OAfHcC1bayIGHvLbS1LBt5A/Ka1+5uHpH/wQIa
	 z47sZmvdODJKRZKKSXKjxV6ufG2tnGF41qMQt1kNaz/stkkf3fkrATPFr47GrDkcOz
	 JHAaHDzsKtYRPiVPV+bNBea5EGiQNRbftBTpIHE7W37kv43w0sWsR6xVLR3sYDIH2w
	 5ie38VdpfKurIUkk/kmXEKzEhga0tvkFXhnsGIyJcZOwpSKCeNaCUCNEBL29HyJaKH
	 C334XU5WoRpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 741A1C47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170464129644.10264.10366924345621743142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e649ee164e77700d881eadf396d319a4432bef9bc9f76acfc27b9481aad29a1
Date: Sun, 07 Jan 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704641296
