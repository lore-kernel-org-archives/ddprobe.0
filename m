Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26148F44
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E8CC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667900454;
	bh=VvP9J2z+HEEhUM3Ry45sxrzar8m7SEce9iyTMEgJcHw=;
	h=To:Subject:From:Date:From;
	b=Z61f6ewb6otQ01NtL75rNnDNWR+/E0EqiveI+5+/nfjhQQKn3pZuUPXm4+JqACrlC
	 yD1Hm9te5f1LM4B9wEvibF2y/jpBdsULY/pAA/GyRppmy6zFLINmuIStE+842eah8t
	 N/07RGf3f7qVqYUp466a2CLWMg+nJgfMKPvXppDGcpgrmtKp2c4+w/uQA5bC5lAsZY
	 Bn0Zr+iLeMGeSO0v6dElpTZJye4traQ8IKiDHNdWLBmsHj/5y6Jmj6J/O8IRUkOVjP
	 ihr1S9p7uh5lXd18/n/B5IylF3+qTyqxwlL4y5l84gWsJ0MyRNqKObXEpC6CXCtjSp
	 O3IGsI3YtpU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56168C43217
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790045434.3059.16497918131213576372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120e2f6b51a0c5ce1bf8143273d133506f0979e5606e199b414c9902da182737
Date: Tue, 08 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667900454
