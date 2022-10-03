Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB20D17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE24C433D7
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664778053;
	bh=+IJXxVNzCE5Ko0aVKCIK59yEFtk+3h1E06erR1M/yZA=;
	h=To:Subject:From:Date:From;
	b=X6i0Hm0lwx1Ygp6IaeMZxcD2+F9zdGfjnLXzTbCGtYWdL8Uh0pIL15O+OlXmyELPZ
	 pTPZar65RjyW8q1EFmH1XUsi8obMNwfMwtL/7Gb0UG3PIlw1E7DnZP0iFOw9dPcX9Q
	 T1/kSpmwAsNNPN1rWKitmvFGJjaohx+4Mt8bCsFBIsK09LxKWUX8whsW3FKP/WovGP
	 h6HNQYCE8LAzS87oiP+G+6gSt6VW6CuabAW2mVmI+/iHx2XMhN/zAkzvxe/OhW0Qf2
	 Cq9jwH+W3rX0ayzM8jVsUYYfS6TVhrnUupbcDE6zgw1z36LUtRW2eH2Ye7XKbXRhKt
	 KeGvNEZXeB54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D41C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477805334.4750.1469240540705476640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80f8e8496dec188e2a80d66eb05065c7c97768652af74b39d3717dcdf37b891
Date: Mon, 03 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664778053
