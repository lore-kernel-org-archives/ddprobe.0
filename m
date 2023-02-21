Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0E26FC4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 17:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27ABC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 17:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677001805;
	bh=0AdboNR2FBKrbeY9fdpMhCKt3E1jJHBXEoj73GP/IKI=;
	h=To:Subject:From:Date:From;
	b=ShQ2xt/BX5JQbvynNIuT7pcpPgJeoopYIxQ7bKFrpLZIfo7Sq5wPwlYaEEyJqGw7c
	 E1GPpan2cu6CJJBaMsQ4glpXk9zj3j7tnk2lnNyKBaxf/4JJPZFa+x0u56v4YD4brw
	 fqFYpGzy/OlREO4gczdYEVIRmmJemqDDSlSw6r0RF18MkmEXIm+y6+3fL6uptqY/xd
	 Zyd52gWoT0oFVimS+e1oKawkuMtZlVnzlQ70GTeRq9HyndzZ9DBtDhg2UQFklFiBwk
	 S9gsjyiAJuYr36ePS5bYoKRSPWrs2zqXDyvVzJ/QJOVHt6/uLFoiW4iqdwliYXNDxC
	 8Esub6CwQYz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DF5C636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 17:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167700180573.540.806532609106983654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35573208dca96464af42d8374d878036987593b746033432fa640ffc84f2cca2
Date: Tue, 21 Feb 2023 17:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677001805
