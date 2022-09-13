Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F8F3C10
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1F6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663084253;
	bh=GuJzPCkC4SJRG45N5l2/26zx/w76fdEKJjAF/VcKzHo=;
	h=To:Subject:From:Date:From;
	b=JouHhdVectwLmrBojhK/LZx7eGM/cZqetp7lnomQDD1NyhRpsNsMJUV1LSIC/W7L7
	 qpgUsODtuxvZzamvMK4cGF7JHKAIMvAN1VbJwAmArmu2xSQGvVr/Zu/0hHgtiKLzTN
	 0Ay3VS77kKRT3p9FDDIQdAwH5zG6sep1+IGFQUXhYbz/5Pook6ngHo5ujIcxmwce+p
	 fKgXEndMDDC9gkToeDOtz0FVXdCNRQ7KiBqodeQOMPoHlFk3/w14AQduavIHKM+yYJ
	 CZdC3IKYF6TR7n8ThMpUDtAc1eGrB5Tq6364+ThKSvaTFzqaRoo/4KoP5DcAEf0r0P
	 XtNRpq8f5z3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52160C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308425332.14120.5401965613559838286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2118ffc9eabcfc29a880c08c3cddbb6875dd7044e2cb62e77e6daa8568ab1bb
Date: Tue, 13 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663084253
