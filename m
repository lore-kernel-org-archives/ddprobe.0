Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89574434
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69341C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663967453;
	bh=GKTy7yqUbSNW8D9Xejl/tF9xUbthiUTD4Cm+o63tl3Q=;
	h=To:Subject:From:Date:From;
	b=RXE8qY6ScZJbXabuFYPWUzC6PwV4BXYMdP0i3XoDHPDrWGGl1kRbtkDYZ+ztD2ZKg
	 51kIk315LN/3As7mH7jMQx8k9lo1wx6mIoarADOYCRWlkmP5ny0zwwwx4Wxcr7mzX0
	 HZ3mMgzAU+06/1kYxgqW/fWz0/Deu9/xoH+hJKPHlnc/QYIk+DWobLM9vUo9pnMcom
	 teR1z1YFUJQYI9ogJD+KVgNNvHtaeYqkjA30wsgZydvTmc5jOv1Cx1WCrMLZaiADx8
	 avsY+hDWtThZuy3+fcTGoX0N5ROKzgn33Iaa9/sckXaLDPzFaCWnFy2QmskZi+DlxH
	 DZ7QOAm/DqVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E812C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396745331.25134.12514787146339473156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9337a8f5df7bdbd6d51a935f4aa27c42a5e0bdad8527c772439eb0ad56d28f
Date: Fri, 23 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663967453
