Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC152912
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74905C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665788453;
	bh=HvytdImQKDKrfNGZdGPKFZqD5Rb/34KPdAY053LX2IY=;
	h=To:Subject:From:Date:From;
	b=R0oc4TrJWXh2/pOFLZhGAnZKY8U8DSwtIugCihEUpLiBlmaCKtgX6z//v6y+r4HKp
	 KyG9lxWP+v91v/TC4n2U6pwM711hnlmyDQ5GUotZpAvHDB+JEvrm7ESR0x9yzuiZR1
	 kdfepa6hrVNhmWwD5ENEZQZo5Ey9I2eRnW3XXiW8M8MMo6tL8slY7aqM4WVKMvR0M+
	 UzyGYcf3+oYd/nAvFSVu6YN27ENqfmYwfQvJ9FDGT2/vaqkXwotNmj5Wy5edqGEh3t
	 sktbknH+tfvef292VJXek/UM9HGAlN2cIJ1XWhMbz6TVkHl7+SeOweVCXvTTvWq5IZ
	 ICb1umL7Y8gNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BBCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578845332.23379.8998945295197662114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441cbfda5946a4c3cb898636c8515d5fa42f6c248cfa78be8a94df8de6b6c0b8
Date: Fri, 14 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665788453
