Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D7815A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DA0C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663903253;
	bh=NBSEODxgotr7PZRd6Uz4G5PvC6sG2irbbeLXtach7kA=;
	h=To:Subject:From:Date:From;
	b=B196W6q41Vv7X87voSdev6u6nVA7bRmUQzzIxAeB36vbnvt8NjkhIUeV6KMM7tOvi
	 AfBbjQAKdKwRXLIj1dWaOB+gOFUSBUcGCfmRyFFwATYkeEnbywmqSj46Tdhpk6voFT
	 PB5zWPPSIHlFfzWJF/T2rxDoscEtR0+XIQfDFvfb9EF32n1Sge4ZijKIwilBqXK3C5
	 G293djFv/XGVkNKD1i9peBfFGJJjZ5U6VHeXYW0rOtkt8brX0FcSdQQVy9aRA69r+q
	 YIhzLOZh144yVVtmKJBDqFp8xirfCl2BdT97vKNYLBC+wQZQOuxoJhEax3gDVBvzpV
	 qJd+fY5wxoRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DA9C6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390325335.22340.11035009060481441811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4681e9c96cda4c773bca6d03c3fa067a0255a3b682646b52f07025313ba7c976
Date: Fri, 23 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663903253
