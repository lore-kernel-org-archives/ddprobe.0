Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AD36A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF47C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693100048;
	bh=S4r0F//iZXv4fzxL8nftG0NXbL/f1i0vT8GfQxvMSts=;
	h=To:Subject:From:Date:From;
	b=VjShlr2EyZIX2KOqm2za40CG7ORkH438FgaoGLuTghanNnVlhiWNJpx9RYlzlxar5
	 QVkZH8SxqMBrz/4D/ky+gKO3/o9fXsXfM++0d2GdK4bujxT3zChDew0cd5tYG8kbBv
	 k+sdFDZEqV6D3btjzKK1VCr876pXkH4/0jrS2ZFdXyvi6Eh6crZxbENzL1aYrAJN9b
	 RucMP/LtlrqT/2HAPWPOTrRMiI3OMB6xw//xgBZxENA59jkP4218hRF2lql175+lDl
	 xX7x2C4Aeerk1y/xhuZIxwHO4sujJ4XExetaV48W5BGv8Z5Fz0xsKf1JFXwspFWBF6
	 aiGc0wIs3ve+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CDC71153
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169310004867.32556.12576169632444577182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c93afee9fdfceb4d50213cbfe69888cd0b78a92b6d353ed51348bd93ea756c6
Date: Sun, 27 Aug 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693100048
