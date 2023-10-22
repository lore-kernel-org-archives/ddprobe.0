Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6051FD9
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az62UPPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F46C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697986696;
	bh=T3mXGXxEQANoktTg6zBS6PFIvGUiA07w/2PjIuVg5rg=;
	h=To:Subject:From:Date:From;
	b=Az62UPPNdvy+5OvV5AwT00wcPW3nnTyLEpEXRc1wLflHy4WzOdODLRVydTIcIHS8n
	 E8GuPbUtP6hLM7fZQfl6jG+wYG8QwjyovaTl6w+kAA50XIOrz2Fec1wdBQwlxx6wGo
	 RZSf+GG3OLRRViuhcvcPgtTQJznIMc6S9uHV7hlEt/V9voFj6ehL03AcuSGzMbKPQP
	 U864eHHuN6VyMF8d43wTI7f/wmHJrb4i++QaNM7E6A5X8O8emz/OGwRbTYCIOoAAKq
	 vDhBYAVFlqDyQuntCvyrjCnIQJqc0fsCFYGsP7cwVviEXgQPtaoSNNUGUfvn2WOXxV
	 fPqnbTT1ZUu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6365DCDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169798669638.2929.13578706197937287599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c225b24f7b1b9f3fc2358db611ba4163fc48b7703c765d61dc189b2c10ad9f
Date: Sun, 22 Oct 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697986696
