Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B864E7488
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70750C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667491854;
	bh=7Mmppfc5Yrbu6TdrNRxbOzwmFuxxNIeez1A7slnmo8Y=;
	h=To:Subject:From:Date:From;
	b=Qvo5qpICsuUV/BTlwjxfQKMvvWJRS1oV/8AunfocxPGCjELXI85exnDmkCndPIfC7
	 cvmrLjeRxgdIUNc3oUYtfB/qg47pd9u5tehYGK+v/pjp2vPX6XPRN8KnNIPqfOrYQ5
	 CPHk8Tbh44/CTqf65bwmx84vuq2plDMg0zTQUya1FjKiS5CJXZBAx6Qf+irlShst+8
	 mqyYpC4hOCsfuxXMxZDL3xxCCXZGACCwU9NuXZqyfT0w9Co3MP9shV1Bj2sbPci83k
	 3II+0TelLwzrjimCTmbOMquvE+YRyRqgn2dEQfJqbtiTTaDZ+yGfDtagftNXJmkH62
	 5GWh6VjzCOMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57498C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166749185434.7972.12974154245439868831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd432e6928002f1e17cf1de9d45dd6819ab2b73727d06ff21ae5478a1bb7a459
Date: Thu, 03 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667491854
