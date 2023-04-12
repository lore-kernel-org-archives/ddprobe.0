Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD5D568E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2076CC43322
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681307526;
	bh=ZIk9/DiIrPbx7JtqGJhPNSUQx/IEyXRZjfCMpqT06nI=;
	h=To:Subject:From:Date:From;
	b=bHadJxKv27XdGBf0p6fihFvtzO7iCci+sZWiG9S8G1tFGtwqdtj6jKkWL7WdpMPdr
	 fKgY/N4mFKj0C6WjFR+CV/K+aG4wKGhWqE3pYbn+RQELNcRkNt26MBiQtr3xwERvil
	 N0oWIAc692WhwUnjUsvh275OheH3T0niDwcX6HYosCvsFJSTqcIk/xFjCl/jpgzuIJ
	 Ge0qWDHTZ8xCWkPnFR9UErnIhZtzYXSCZABlikEdlfZZfFyOzIelypxca9EbVV2UGj
	 iFtfoHLR95WJvP3zwOTuZuC0BP/duPsUPZ06iI27tFYErxKHh1DxofnbBmUGi2Xl/e
	 X2XwrwB/WgsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC453C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130752576.5710.2956698268901355315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb15839007d034a67dd147958d398b26d8dd6154fb0712188b86d5e498ea4d7c
Date: Wed, 12 Apr 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681307525
