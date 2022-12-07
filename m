Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D995D362
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A55C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670409054;
	bh=tAyS6y0G0gSRjAgepeT7UKoV2B/rp7Z1rc7jMuW8rlo=;
	h=To:Subject:From:Date:From;
	b=BkGt13owQMAmZh8LskvR4yU5CK4UXLMSBZ+lnxNbtGO479ktvs1/oFEIzZep28qdD
	 HIIguqPzZtXh0DSX4Lx8BLPwcEArsUDELiPGH0W4dThoHRadXEi2T+8At81zRFghml
	 MYDxrsahNLeqxsVXYvbgnuLvGnV6e05GCN6bNqVkqyV/8/iKLEUBnxmPE30GMtsT6o
	 u8LfeeMGJ4Ke/7aHpxb7tMI3Hpk8SoC08VzYWGmREf/AVw6t+3D6YBM1+C3bX7Y2Hy
	 oWQLoL6rtSNUY6JpCDdHWqoeVSu9QEs6/EbD0FG7cIu27VERCioXdvfbg4HP8TXUpG
	 prD+9C+3iMVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB82C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040905443.30026.7505790301295866053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9738c6ec0fc07d5481722f8194f60c99ff23f50cbe141e475eab8c4b114f74fe
Date: Wed, 07 Dec 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670409054
