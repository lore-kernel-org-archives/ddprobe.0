Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75B85386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7064BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666129853;
	bh=AdLM3i9F8ud/Cz0dZhqvDzdofdpw6haVicng3Ly7fKk=;
	h=To:Subject:From:Date:From;
	b=kMVv13LPLHkYII/QfcppsDjWiO48AwqS2Xc+e6MdyER2vovrxPrzQH1FdW8RGxzS3
	 y/drQWg9LOwXwnLs+ICQNXxuFOaYkOdOz/Tl1wqbwR7/iiMXTsfPP2DK6Jr25FmDT1
	 VzJHqPG3w4IIFObIAAeUtHI03f76B0Z6yaPT5/UNjPQ7yPcp4KRpKHYuCkW/Nvhojb
	 6kX5+1f/5h7Bv1yC5LDTPwxQOUpgZHlDSQPaEwoFzoIwQ1aDdbA9FOSCY1/SGrAeJE
	 aMpCde5O3BY2Uh+bua/qgwiZVepNWkbbM0cJDjNkzoNxJ3b3LQ7io5lSYqxK4vrx19
	 +9JM2QA8ZwxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559E7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612985334.18125.5801819844115724409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8be8cf727a34bc69b6afe5c17934f0ede94785604c0a8e90ce99b9f1850cf6
Date: Tue, 18 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666129853
