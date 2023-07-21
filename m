Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574461ED47
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA752C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689955328;
	bh=1r4yg+zRbZFVvZLCA3l2Vrpoa9KrclfYO6FZkcPFII0=;
	h=To:Subject:From:Date:From;
	b=VdSl2r/vnHzXhwZa/9RlKHbfBcriiOOObO8MjD6R4z3mWVaaCj/w9dGsSiUqbK1S+
	 ufu5XvOM/89uSyI8ANjoDP+eK8q3DiM16ZZE4WT7iHKZC4yAClQjyroeuCnqzt+njS
	 FUWzhLiSI4A341AGA3MkoazkJ/N2R8VlUhEPVBoGBzm6QvALX0Sk9KxBg0KXQhWLuF
	 hoEhgmKkROQpX5UlIWiPPGJZIldp46CFEOKWh4/SNW/zqCh/1De5cw6WtnTWgkYB/g
	 W+ng7uW9V5cVPsXiUGilX85fWPksJUysLEADZQSC8cZUwf5mfDYtQHjC0piW5fGS8k
	 hu+FKoVf001dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE2AEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995532869.29268.11747631048376723064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08221bb0674672762eec379e81cd5398a08389546faedb8b1deed1f2ebc91e6
Date: Fri, 21 Jul 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689955328
