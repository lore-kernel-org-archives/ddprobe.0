Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5589DED9
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF438C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694673848;
	bh=GdPPza/NR4lyqqMD2IkBFVmfGscaCLivCZDKYE2cykk=;
	h=To:Subject:From:Date:From;
	b=U7ZbBwwxZkXzzfsyqFv6Fi0coC3/2dcejfz5glTTY3fwuMYJ0YVPmsx5+uCON0UlQ
	 HbMcOH92PZ/wZ3SdzpPrBNBtUlsQmq2yAD1GtsC8EggSMBTJHUZhFbZcjXtjxXdLrb
	 YOZezAoalGFK4YCVjEHJvhj/6Zvyuzsfav1WEbZTiqS4iS1lfLBahmpxBgBP3J1vOb
	 LYENBEc6HxM+lGugl+ZkMs3tLrxFwUxz7qtRaft3FoPMcYP4BdSB+8GTBiQp2JZcQd
	 XYD8EuQKP4yKW10De1xLO6vKuZTJmkQiSqEglLZojEEfNvjLI/7drBMHCQniCXZ7AZ
	 MYsKlHCs0+CQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A698BEDE987
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169467384867.9526.10463537999161612608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0122529f13746279dc688c30bda9837e7d4b329e1bb8c8c1abae23fb0e220778
Date: Thu, 14 Sep 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694673848
