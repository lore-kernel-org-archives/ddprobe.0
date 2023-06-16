Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5C6D527
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88FFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686911948;
	bh=HRjveSB/yNQzigERfjHozsbhRhCq4qCS/Ioi+Jo4jYQ=;
	h=To:Subject:From:Date:From;
	b=ARlKf5aHcIMl2icWXf3VdYMnu/2qq+kMUIpzZtnRYxMjpTWbe7F4PJUuVMVvlBRB3
	 YFLYu66KGqeKTx2M4qbSnq+7+SGdUMJDTVR4fU+vgkK4Xy8V22nH48gQAmDjXpnZQt
	 sdbMwudi78DHuOFUKGVX4xyrOD2ZpV28At84+KNndfWzV89fOS355xsd5SK6l/y/Kd
	 n7axhthkINYOHcg3dOELccdVUj/XYVFX3L4vZyYTkOIqImPm1n24ztA10TD1Rb//pO
	 +RG7pza4iWjwvwy19TQNLTChkfn37G2otlkCF8o3tLgA3m0JSHFf4tXUxlrC48IJLr
	 qkOcaF9J3jXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0063EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691194877.11269.8790621281109548997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e62dce5bded515594084fc2f3901ae8ff003ffce518f3ad4cdbc326582fb6ac
Date: Fri, 16 Jun 2023 10:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686911948
