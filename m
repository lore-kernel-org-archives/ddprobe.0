Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C996130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F7FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666383053;
	bh=G/9hmtY+c1nppOm85s2isDSNqNVZcj2ZRXXlmnXQVHw=;
	h=To:Subject:From:Date:From;
	b=srw6Kx+ROXeystughGRYn1pTHgU8mUFmrCVdeA7MgOkIZuojShploLky+3McG1O+K
	 SLsJWxseQ448uHOq1uUo0X45RjonoJRFQCW7HKvoAJuhJNPBLRwM5aI1OTfKkMXGlC
	 6BH2Q98Ibb/pzNB6Gfw3NoiLxM8zAT1ckmH0kLns4l+/j1DjYK4irhwvbWUy6fTBep
	 5aE8FyOm5Kjhi45ff0H0MkIMLv3xN6sslXuaGl8ijRdHdiy9KiGUfZ/tUBonX7JCHs
	 7BarmdeiFW7TC9TlnjsM2KcF+GI+dqEaTVfgapf7cxb+YNbpUYbCZoM541U6NVCVAx
	 JCNlf3V9d6gMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580EAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638305335.16633.9793502748297069107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8283efb70f45d5bdfeba09bfa6e98c2f851e16e7bcf49404fa7a6b709ebe8f20
Date: Fri, 21 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666383053
