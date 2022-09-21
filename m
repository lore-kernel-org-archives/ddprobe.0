Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA6D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5A5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663789853;
	bh=/HXgHwR+PLiMFJDc05DD+IOYRh0e5hUcDVGExL9jheM=;
	h=To:Subject:From:Date:From;
	b=mFk99ABmPcN8/HhApWe2Ff6sZRG9ZDPJHZZKxdYIG5v48WFj3vGMoqr3M1lj7IWo7
	 8fMb+R/KNyBnm88qCFI6MqvMaBJOI3KAbRiKkox9HOMa+XeDeQ85oaHP64CPRP/JDA
	 9BAY7LCcm9ol78XC9YXrdOun2Y8MLP4o4Wr8NymrgiB5M4SRXW7Kl9Wci3suaqTBvM
	 RZYbNBVsMaLGlfwbopQwC1T14/dERvWmuL5NiB1LwyRTZH7sALimVYEwddKU3sqg8W
	 Mwktxm4jiKiENNHO+qCli7WzBljGQWE7dtAVCKc8IhmbjFaKuFvrvC++HCQfO2EvaK
	 kma7YpGdS7LCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55644ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378985334.7129.11868886782192348028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2130391c059860712250330695f496f63b0abcb5bce300aee57a3dc46a5bb569
Date: Wed, 21 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663789853
