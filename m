Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC55191
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73613C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664008853;
	bh=WIZywGOOMAILRfU2/KTpMVLbo6JyQhy8K/aEG43XWWQ=;
	h=To:Subject:From:Date:From;
	b=gM471zMvgw2Sqhp5Eui5IKNasUL/YIUcboA4kplZPvCUUWaM7rA98NWeCyN81J310
	 85Z6rDOvwHOs2ty4IBfYfCVLPehSw2y0j8cyXUKtpBHSZe3TZ03eSf3Pa9EqKR4Xa+
	 zSQa00Gb+Bdwv0svZHDFuFNPfAxCpUJ2J3cFiDzqTdDxTK1eA1c3ZyvK1bR+NNUT+e
	 vfMTVyFEO0sXggLosFjQ0qIYZr8rcEo1W2+Qzq8Iipcr8Oeql0YPv4/XJDa4jHAYmO
	 RqOzM7ambNHTQ3PZyaPZGkeWlPw4udcf6qdA3bZQVEqgdyrIV5OJ5aSCpBXovpaZme
	 VWJckxJom0pGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56852C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400885334.21762.5400308557448692892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ee66005e1428bb9d66e8b63784fe47f3d3b25d30c873be1f8ba9e4e9ebeee7
Date: Sat, 24 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664008853
