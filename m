Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A2D33FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F87C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665179453;
	bh=zGLD75SlXdDyUzlbq0jtVBBSxT74EfzDDNgvsNkWAXA=;
	h=To:Subject:From:Date:From;
	b=sRCEWlPR8ytiyDXW2jcdEmuZRJd+0L8GLWt9tqxjUnfTMjo6YdywIvmhOKurLWjhK
	 +3uOUhG7Yubx9E8VEupXjEJRgwodhmO12vqVjtNi36sjV8wDBWUahanYY2O2ho3dCT
	 +EvrYCFxpjNbsD2VGITElPpl3wVnswnAtQP12zGax+vf4ZFS2eVxJ+AMl2WNGAA83t
	 Odtc5z898eshqTfr3yGBKQdAajGd1Xs9W12vH9xob9gCJ+Sr7FH3G70bNfkwaGjgGn
	 JnEwNbMXSSK5NGQq1gX/11qVVbS2gtP08BlIhqDFKBBG+kwXERGCszi9ylQezPtQ1s
	 Slt1UQ/r7LuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F80DC43217
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517945331.28329.1249844566499579781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90628f8e24c0b4bcc379b6fd5184624234fe738be18cc33cd40b4378cbecc65
Date: Fri, 07 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665179453
