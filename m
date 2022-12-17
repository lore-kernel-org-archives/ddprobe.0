Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09619A5D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671295887;
	bh=RH+pNcc3HBL4x6oSNsXl8xW7r+Tm02FQd/6YgrpcckU=;
	h=To:Subject:From:Date:From;
	b=pfxHccoCTzBFJVVW604mMmU3OVM2EE5bB1WEaJPazeGB6K2kLLxq0Kf52SlxDXz4R
	 1UTuPNU9VaDXqsTFDao+kTMHWWh0k67GytFCicn5TVdT6hemYbqRvmtr0bzTiBflaj
	 kHdgmnJeILsrFD9DQF7jdLLDJCYsWCCmJpKZZiidDWofdVBT0hdm2JWNZN2QURZAA/
	 ITTz9SLxevWMeJ5eE6U8bkzxtzNFKuIYzFQZhvGkD5z85KwPSJb7lndwC+U12B3TXK
	 Go+c8s5qSFZlO/hjuSJ4/LMQ8RFd6NxDYlqR0Xngk/eWh00yvhFtohERny4gRe/LwC
	 x7EF/RnMzT/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A446C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129588744.6709.9567333580186407622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b023f0e56351751c3b132061c4a2ab04c5dec9dd1cedc6e9fdf72b7da0baee
Date: Sat, 17 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671295887
