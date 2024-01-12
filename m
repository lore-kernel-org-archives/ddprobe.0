Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5C063F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPhLUkOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A05C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705027096;
	bh=70xWeFmceeHVfvY9MqQgNFigBseuanU2nGa6x7DpC28=;
	h=To:Subject:From:Date:From;
	b=WPhLUkOpUqYtlM3WQVNQBO6bp+7oDHFquhsWULzV429uyb1S85C5zELaZWtRDwbSk
	 2vZWPAYpsO3sGYCBKAhfdN4VTeoPpj0FJWaMot2zLI+7OQ5c61d2D1oU9CH+N2MnYs
	 s4bdHYfwB4lBlhYBSk7OhyUtbEWIohNtzb8jVsl8hcMgfPdI1YJa+DGnppIVU4dHG9
	 5beWHK/l96MV6ULDbs2BTlLPH+tf8nycRaN4d6KRYkGxvtzvpDw8tkHo7UatrRWnBk
	 lOordzF+XkpUK4aBavypIkQCV3LS2lthGVyxWdauhxVYT2NNLxT8D2EeJLE7SYRh6u
	 IcOlFAzU3bO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672AAC47077
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170502709639.26021.914167644197999597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdad24799d233cba7f2e0f92fc70d00aeb6eb7c6212e76c4f12d2cd6e98472f
Date: Fri, 12 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705027096
