Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7127E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70074C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662077453;
	bh=qMlyYaxXPjRuN5+5VaOWONWgc4uyB4C+HPO5bPYHU6Y=;
	h=To:Subject:From:Date:From;
	b=EvoQAE2GIUnC3b8hB8tsJSIdZxteUkcXJ9Z2fpdYmBH9jzMtP+S5/0BrCzGQZAURD
	 68kZLXvdMaGtIhm/TPLDYFpFcDFLPA9ET5YQz0tw9vnD/ug25f1bFXFfc+uzJirLcM
	 8mwwygKWiej5IrA5eLDdHVqqnuddDB4k+jli3zd7/f7FwpogiNnCg0xsrrhewGgozI
	 Z3nEo7y2UMYrTpvvJjDP67YRGGj4TfjdplJMRiu2+u7+PUfDK3RqmGqvdT/kT+BzeB
	 aMf4MXgp8dkSCjNn90cbE8j3JTWsQ1Ta8OKNH/WX6W1O+fusUgGza78DSG7vcrbbcl
	 Tg0q31+8McMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AF3ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207745332.8024.16428414953399979412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f16ca1afdcf7158bbd142bcc6f908d53e1d31465a9fae73baccfe0f0831fbd5
Date: Fri, 02 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662077453
