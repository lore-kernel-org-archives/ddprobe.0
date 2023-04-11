Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDE7946D
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81C8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681243925;
	bh=SpEt+K6Y28W9GQFXF1hqql1bnrw48DiAjpzsmgv+1Lw=;
	h=To:Subject:From:Date:From;
	b=BIc5imkAh8wDOUpVSNOuXWMZAuZru5BslOzeTqC/dfWzg/A8+hViLf33vKiQVrIB/
	 /be7xZqL1mt2m9lMmkql9V7o0g/VgA+AK603MZvcFUVOQt1N92ShiqN2xBfgqenj6x
	 D3cYdEI4aIWlfIOXevfs6ClxCL3aZA1tJrJEisCOpemEzZ3zrzCnu5k/hvLW0Uq6iT
	 Hy7lr5saHNa1Wao9qFcIASYs28GZtoQZtD4xfBqL0cJVk0jHdaPAULh66M6o/QpIhA
	 9qmbroa+6/X8i8xPdJXCTah3RW+92kmwLwhUZ65GPWkJheTIU6qXZc8O8hVay26Lp4
	 l2vB6K+cRJ0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2EBC76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124392574.21298.246443101482565146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66a68e251466700bdd494c0d6f50199e1ea63aa538c03ab4d27fa643dda7bd3
Date: Tue, 11 Apr 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681243925
