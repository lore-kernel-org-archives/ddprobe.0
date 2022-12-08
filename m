Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B542B621
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF8FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670464254;
	bh=9LIJ/qVAm48JJXBcM2OykbqzyXM1Q5Dw6+RDBgysBdE=;
	h=To:Subject:From:Date:From;
	b=WzviXxRX7+C40DMgCnq7X7vZgWbO2isccX6fzgeRjPHpKwmZdaeCql9uFRvWmAezl
	 wdPc+GEiD+SHcrDmdmWhSAox2hwiFtubizHXlKsG5Tn3iTT4MXtIG6tULOdQu4FyxO
	 eiF9SK0NKPL2t5pp1jci4BFcSM6pGpzr+5IliX9PJ2ulvraSUOe/Tgkr8k8Hd7Il/d
	 PukloHM4gdpvZoZ5g0RUm2q2XpoKvt9j3Tiia0EjdNR6t8oqXQV2cFvs6awsGcMZYt
	 tEGs+sDMXp1YqfW3Vox08yQENZvypYfP5LuJf2uGE5g+w5Ni7YIVr/foD27iElnLXm
	 my+gIZ8NCPwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56013C4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046425434.20459.339905375998229470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc8afb7c13ef27177d297256c6b82e12c31a71421fcf27b9f712b8d8a36d5bd
Date: Thu, 08 Dec 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670464254
