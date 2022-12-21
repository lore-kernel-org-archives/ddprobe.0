Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A6D10F2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D3AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671582087;
	bh=Wgu88Y8PWlW0bU+NE+xoboL+Y1U7rlcn+/c5Oh4i84s=;
	h=To:Subject:From:Date:From;
	b=rtppIsbW8xE/XrJsIuwbcFsNxmDHZggKbr6/v87r3gFnXVlUL+sxABvifkxGlzFD+
	 b2AJu4Wrdoujvb0SDcZ1iKLCvdbxL4NgDYDbgv/OhhPswTc+vzt48crcYsHzdiaMYm
	 taZxJ3dF6Dmyoj5HU3mLyFy0hezVog1vAQMRvLcWSRLOL3n6LnMJtKzPCVC7d0bOog
	 TsWkA8wusM7vVFb8SeB6Ne7+kDLqbg1Isngo4R9TdNZMzoiN9BmiMhVN/2hfl7P+2s
	 TKPUAt2440OFRlRHnpHxF8XqptsJ8AvY+WM+slsdNMf2ePFmYcEvPH5ZKjdG1L1Rcf
	 sROG89WgyIyKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D10FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158208756.1123.16496763864813685258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdad7cb0c50608485481dbb43d9079f14396f87093be7c8d7d5e1fd37cf6f04d
Date: Wed, 21 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671582087
