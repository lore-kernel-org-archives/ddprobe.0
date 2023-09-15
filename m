Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF38485
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 13:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65ADC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 13:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694786108;
	bh=Tg0yNHAP/DEVuKA5hZpeHaGC7Zmgt3yWLW5QmFxSPNk=;
	h=To:Subject:From:Date:From;
	b=U+vs39UAv0MAogBaeII7TzuEctJDvlwmEpAoAGe1ne8b2prqGu8lkEHMVBd2Xhmto
	 kdCRQFpImtt9zo2/5O8Z9gZ+kIDGU8/dJs1HAlaM/cWGuUJANLE8NKwrHR3n69OsbY
	 L89UEuzlQtapZY7bli3ISRbfKgdnifJxm4piTGaaeXaSLLuHL9iJHL+0epsIvVo5bk
	 8rMa3rt4e0MfekOMtTG3cssPvuT1ENQh+r+OyAu3qxAN/Mnw4LgeZa02FAfGtAGFW2
	 kRr5KcQoorTeZ5Lbq0XQluzskXTaKdJoxClEP3zMp8cL+Gty5+aE6VKSF+7vdGw3sA
	 nyDG9JAYV45bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8018EE6457
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 13:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169478610867.31738.866361240228315564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d786aec2ea9dc7d55c2c66e1026b472d4ef24b864569d2e60538419a6f564a9
Date: Fri, 15 Sep 2023 13:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694786108
