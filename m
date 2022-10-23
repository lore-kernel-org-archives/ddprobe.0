Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13207B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B75C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666503053;
	bh=I5se0CvFlJeyHR/o6qoS7taUupJowfcQuA3qcdcYl3Y=;
	h=To:Subject:From:Date:From;
	b=W/uWjsTduj+/AWq+0123D3k6xJhE2THx+weyg2Q4qhP9heZJpOzTKtQJmTRUeEKMf
	 aH9htxLQZR7eK4DeO7Naov3NNZ05a9riVo0jQ0DYXE8ZgK1+9X4ZRpBzixSwMph/GB
	 Zzr33s1wCR+VMIu0/mrQGIdPSQKAZn/JICu/S7TYwiEXswp/itXn23Xx/C0ifsUL+b
	 +CaX3NE9yibsOnC40eWlsK+M7fkyWMsgt/3so1O6pUdta4OTV8KpxwGgm+crKPw4Mg
	 bl3v8Sdv2HjyXy/MFwdkC6a4Z37imJsnJ7igug33PVQxPpPkmTJVLe6wpZ18yKlc4Q
	 nncUEmalkpoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58236C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650305335.10846.6170259379764451128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5c0d608ae6e6bb0d40e5c310ac5f72abdf983ac1d07286598c29239a981dbc
Date: Sun, 23 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666503053
