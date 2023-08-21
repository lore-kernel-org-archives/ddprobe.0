Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408E719F
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D065DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692642848;
	bh=GCuW9RRxbBUrHZTy6siqaQL2+iC4dn2oiBBPk+jKmJU=;
	h=To:Subject:From:Date:From;
	b=pIDeda+D70SFnWF+vp3UnEXDwTS66CbeQcJa/q82mKULaCm4MlW+lLyRTQlZaveD9
	 rFCqso8vku3YDvWdaRl4mMNDzItpcgEZkTfrZDoNFI7Y05ef0Sjl51yFiCOtOCoiVz
	 DyfEQkEzfPIqjxWc0FzDXUL8eL6yGeB9eycUKMw76wd7M6QOOgdVz6nF+ZWKxPzNva
	 fLJbYj5/lsbIrjvTbWyG9h2xBMuPjlKD05QBbbLtf7fjohMAFXZpiOVotchF/XFnln
	 TFLbVX0WVlJn7Mwj64kD0TOBmectIdfg/b8bRwLZkrRNNAWEyhalhVKBtCodCPMJrA
	 Ptdwc9yqMkSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53D0EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264284873.20836.2582826744805018429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de79d63d242b7736f1ad558cd9136375f02bfcc0ff6a53e6cae32acf59205be
Date: Mon, 21 Aug 2023 18:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692642848
