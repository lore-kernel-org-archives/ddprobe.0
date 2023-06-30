Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB61156D8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 14:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D562CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688133788;
	bh=upgR7hBiSgiAn9ynJv/YWRolX/3tagnxWenmrH+Vp/8=;
	h=To:Subject:From:Date:From;
	b=HjcpCL4Eox+TjArdNi+yDQGacww98dlhR/9MY3ms5NcAef9Z5pnq9AGXRjw9NHK/w
	 O+5kfNS/2TjXkBW1YFPYawLJXd5O4Zb47TWDnjQgSRJ0zqT7AjU+/ifEyEoJreoxJY
	 Jw+ijbhotvRFVvlbnaPpu0eLu9HBsehR3Qm9cu9CHr71uztsB0wsE0pKfdFveyndoM
	 CKd4AZmFaNHADw2305mmN07aVZVdFfAjB8fvRqjZspd0rdTr6kEWACnDc256Qk9ztn
	 rcQnBpgCLRczirkWLsQD0CzxE9VVUBgWRsXTdSJgB/uo+D2LDEYs4y6xFDJEW3VFcm
	 Ye30Y+0lV9lAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D5EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813378872.23078.11871982994467310439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83eca633ad0d4b77cb8ac83fac9848469988731711e542fa802bbce0470f972
Date: Fri, 30 Jun 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688133788
