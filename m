Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA75D184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733DEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663282253;
	bh=GOJKBEVC5++rBVohsJqyEcbtZ/NI11QK7Sqw+yWEJPU=;
	h=To:Subject:From:Date:From;
	b=pJCbi8w4QGLNEnzG6XM4cPdk6KO8ac5xQN21sjuW0GGf4RbCtYoGOrjj9GgcrUwdd
	 NqMggyGL/nwlwHfDqyzwqo+HFh6+H21khm5lf9xqxNxlgmnOUwzdvGDb9vF6JvuRj7
	 24NjNU1PMsR7fdXoFQvPXxRXvTYCB7uvrNM5WPuRSHpq7978R+X6clsTyxlh83Xl8g
	 On7fykpWMSryKlykgyDlr6B6SbVDRdyhkJRjnIQLqoIreZ1TAJ3p1EiQR2cVYcvnK4
	 y3AxpY9oefRL+PXkCFNUEFqNAN59nSOOvQUa9MUIA+GwoWaizAD2/mdlB62RlvlevS
	 U2QEj5q3aTghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5040EC32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328225332.30075.11857440509503125466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77c7d4ea86c5717efcf95173d3c25373789b061d9906e5fa9c20b6bdfcec9c7
Date: Thu, 15 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663282253
