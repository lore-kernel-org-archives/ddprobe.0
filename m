Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D2645
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2472C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687671188;
	bh=AIjT4ypti7ouLtqWzHRBdzklPNAQ0dFu3ZWTx8X19fo=;
	h=To:Subject:From:Date:From;
	b=bgedRj5G+uRABoM8Vhsf33UBto8iv+5rtcA35rIR3MUfgvuuB9MrBWoBhXUaKs3M3
	 owOvP5OASWHo7HV2886qy8fzunsenzyoMfuP2pJPGA7CZEiRz02Tqt0D3bnDj5f79m
	 qvs0yI5IWJ1J/lRn/iMXp66c7KFNEhl5EzPGgmqEyuZaXY5wvAd3qmm5tDXELAte/K
	 vaRL+r15oTXErBtZ9ZwAYNttVmLnTp3nhvNj5J0krfMFt2sL4t29SBvXEcIj5RrZBZ
	 uiUdIWON6G7kBRXqi3oZhsutAAgIYOoyEJuupxkpKLB6ACg5XAlyAOJIhNUEuMomRG
	 cdXbLSTFhgtsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E1EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767118873.31129.18429857082001676969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbc56ad6c26d6f9c338c9c7a067310945af9bb513203ab8963ca14181da9bf1
Date: Sun, 25 Jun 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687671188
