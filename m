Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25223C3D
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C54AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663152653;
	bh=RbKsBmV+7ZglN46y55EZTvRHeOKlVX0PIZqJDZeySvY=;
	h=To:Subject:From:Date:From;
	b=LitoVa+lCjS1GZSmdl2gam3eEndQGVbweDltKXUuga/RwLIYJOGFZAxVsd30QVXBe
	 HcsBYxYLWSO6Y/VMLFvFk9QZRjDy5eL8fMaMGXK6f06zBBdB63jRVpw1q6QEAZwrOm
	 uKus2uRjx3+jpS007dwLh02aLTrh0w8ed0z7u4d7dXYstys/3LjRXXwYlBRrf4ZGBw
	 s7CYCGHhACXsfsdbPR4qR5mDPsqQVHTUT3ZC0TIHCWAnP6VsyCznwyvl8wmaJxR5Bp
	 3PaXE5q+RN6wqj7kWygg1WLNb0CWXjyNZLD0PJTL9znBemXKoVUTew9aAuX22brrNc
	 OKho+g4l8XRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54333C6FA8D
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315265333.21175.7536854618969742988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166e07cc517520682f0afeffb69c808b66cfabd18cb5f10dc9d330bb3fba411c
Date: Wed, 14 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663152653
