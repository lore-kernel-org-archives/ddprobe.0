Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5277B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C051C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666936254;
	bh=sRufXa8wpXVVG+xidZDB653Tx4cJ28Sel3L+l3/6Efo=;
	h=To:Subject:From:Date:From;
	b=qUJdapG7px1KXVQH8v9x1zKaQuD5YqqefopjKm+70OwAcfpriy4xcc0d8xreQMwmh
	 AnZZPm5iHH/76n325dcfwiebJn5LkqXyEh8xK07rXAoq7FROmEABcZ/Fra8cjfhS9o
	 KgEHkhtR3YzZEEXaWqds48xYrAns1JmC+JJyxruZHMG1/ltTBGVyeP9kuoNp7qeJfL
	 iA0HTe27wFboMfxM+yz8uEjrPeDT/YTDVzeTmxOsbUave2eVvnpFPITOCH50IKd08T
	 VO6N5upb2o5YnOVkEzXEnGiUWoLFrqqc/2zXJYEEHiVHmngIteUC1it1Doiiwb24+E
	 5Iu0ccActFuEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678F8ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693625440.7893.10682656334082578701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd42a386cfc03cdfb5824cf3de3ae6d2688c9656bfb86a444302a93529f86fa
Date: Fri, 28 Oct 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666936254
