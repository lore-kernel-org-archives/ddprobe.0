Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B5311700
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g27YnLln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 899B0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699852096;
	bh=3pnUpGgLd2yoERKhADcKSZDE2mYIa1kyUm3t6E815CE=;
	h=To:Subject:From:Date:From;
	b=g27YnLlnyqYr5DB+M6cishNYRg+OlQZ2G6SrTmfUvaKq1cDGaNoTnhz0/IMRV4hLI
	 Ud1hHy0rroDgK9w0OqBEhGagxaMivNUcbriWgA87wSz1/10mgJg2JfgiDk/mXsK8Lc
	 yzIqhKXS/cIntMIvFcfjaAt7RXdWuOhPFlpO5nRiWXiBAN7vFMopIMnCiVP0H1XwJZ
	 M2EpjxbUCLjjYukGJpyI9KRkP//ZhkzFyDujXQOOEQ85jqkJGKColGgGFpvIFcbk/Y
	 W4RkDRNEHCZTI2lfJtsWKvVVsQ+emYl3aLmFHBMhVBGHxvk6NYVm/GIOvRw9Ya60TH
	 6ZSuyBfMN/6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED50C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985209642.1362.2955054894781290512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a0321c25960ee198f30a2cb7ad5d55a7e7c0843e3b75b3688e66322dd6d485
Date: Mon, 13 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699852096
