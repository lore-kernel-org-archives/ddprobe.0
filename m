Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E00A20
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E5EC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688280248;
	bh=3sl2M3xlvfKtGsgS63bOBGtrj3/Y546ge8npro5WCXs=;
	h=To:Subject:From:Date:From;
	b=GY+4LtI5hHfjeDBnNldIssUq1aTcQzWq3BpsUvZ20tuO0fec5BPuQ9S6mbBp/lrJi
	 Yyl/A/B57CoYjd89WW2WMCpZNtdA1A4rP7hN53J0a74z97dl02tW1haCE2Ur2OGOuq
	 tGXElJ0sA4VRDbwV44YERLeebeTCAnleo41w6PCADi5xdwfVg+svAL2NV4tg7BspU0
	 U/ZGKWsceqquJ5bZwOutuEMZPwc/ZqKOlOp5bmfvVx1+0tYIClLu7gtXw4GXGIHQNG
	 HqiPLrmBstNesTzOo7FGTc/nJ2LbjrVEVYm69OQnwS6UqvDW+PquQGYsH0avwKWRN+
	 11ze2NE8ryhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AD9EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828024871.18470.17853729832353434894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ca9b8cfe98eee6890bb87e23c4ba6c0e2b1e4479ad194c21c4e51e46cba1c1
Date: Sun, 02 Jul 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688280248
