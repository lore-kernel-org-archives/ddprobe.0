Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD51A47
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F351FC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687834989;
	bh=m8DRgc1YdhbHEH3F+jdrPXCvgEILmTj4shMuY+SpGLg=;
	h=To:Subject:From:Date:From;
	b=FSCa6MD3/B5f2Y2aHHq7wzyCneaCsSS90ZimE7FWfkE1jZtwyQ6aeXs6yTbenPRXt
	 m7ztQe1owRKih3CPjrIySJuo5ZPAgYdFymk9lfdXT+y1YsuTmONgmp9NjUHrEw60bA
	 j5f8axte9L+IJ7ZFiNB5rtLDp3/lOjLIjK7qTb6qet0QLvHe4iRq7fbCOzvg7AXjGu
	 TQ0fWnHDTM9b6lihqAV28aE70GANpKSfRYLZU4IHuQ2AKBCK7hh9ZhG112ZTyJ4Ih/
	 ufnXUk2sIT3S2MCvM/d0ikc76zxAEj9rOTFwVXOPYh5pjiPoBKa2/MF9f+ZtpWdPDB
	 dF6Lx6e4ceKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D776DEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783498887.1866.17089642806400679831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a99f9bc80980b05d8176ea3557be2028408d5780da793cdb45668c193747359
Date: Tue, 27 Jun 2023 03:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687834988
