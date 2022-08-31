Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B989E652
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1EFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661925653;
	bh=sRx5zNTzljTMmuT3y2gIfLBqxJ8O1Y+W7H7XqxU5LsI=;
	h=To:Subject:From:Date:From;
	b=EBKaIXZ1g3LQGGEhH7OJ2ecKWiQ/oTs3YPmkdsbwD93Dir0HA8YCWgcMY1X7ihA7A
	 PVX1ap5T8o/WrgzHFsr1ZRK+dqe3CClTGiWZw09Q4IeQhJn9qa7ujOjRJKMBCAgFNv
	 6xyfWeJj1q4XEBNPqIW18mtmIptIEvY5fpl/W/2wKSwkyaACadgOmlfHTCIiJqcv1+
	 TDRIVezKIFw0z6oKi84iStyP6qOf5LVJam9BvYALQWvWMop3PggW8pD+CgGQP18IfB
	 lfoc1Av5rpVFEIqulWgA9sBKtqBTU/BV3bXGjbYQRZa6fyfFVS4ueLiet5CqoWrtKR
	 Bd9jbnjaIT75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A7FECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192565333.4911.15283625985225389610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8019b75e10e8efc7ad4535bfcf3721bcf678e6f33385ae28cd2c85fa8af87f
Date: Wed, 31 Aug 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661925653
