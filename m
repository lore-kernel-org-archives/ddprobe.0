Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C609C2F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DD5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661526052;
	bh=PRbK60kmsjl1tJgho8v40w/6XubIW10vQrweo/ZcoNo=;
	h=To:Subject:From:Date:From;
	b=ItD68f2zTy/brVS88pss8Fw0NL4BF6nFeflmeiHPyMrZSzTDmEnzZ7y5z+SIIwx5c
	 ZcMsNyJ9olBBMNgqmtPMeZW2rivM0Ghpg6opGQQ5X2IciaQLftQUCrox56y4vgMgfD
	 QyvQ6psIsfJksPWXsRyRdfjsLgL0t/nQ1G/b4W9y0GJ5NZtXgWPhackxULi5CvtF2q
	 9qaHETv/pdfaOnBcUBtAs6g2oZvlcjV2Gm4qnl9OO2knKh2XxrATeEvLicAyTDzXmj
	 1SinmAi97ze/8WgfGRIKFJ4ZGvIZquMGfig+b8keVc+FgQ044MKmDPx9ReBMoVC5Mb
	 3VyByXRH8/PfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5606AECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152605234.29819.12782835362630209806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2ae4a504602429f5e084765e184d55dc5609eb99713a4f1837c8959d91efc0
Date: Fri, 26 Aug 2022 15:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661526052
