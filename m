Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045647E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC22C433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669171254;
	bh=W+BLyHyanewaIgkvzqMot8QMLjM5vyzPzNtGFq1Vk9Y=;
	h=To:Subject:From:Date:From;
	b=OaldvIV/OV0xDqLPckBMMekPXxJXxKpAXWMcVW25EduY1jhZwfdU/YW5XYf2OqKCR
	 0/YbJzdoCzpg/N0rSg+DzDA9UHPko6Rx3qVQgzzOsnaWcaBW6NmI/fCz6xpHp7clIn
	 4J58Ps0dPlXGxZo2qp6R8OdmYKrdfvv/E3N9mf1Jqvx76tb8CCQmcnvzVmEe33a9QO
	 m1wnUJzSE/1PRWnSOdZOfuYQWQfCUSPYLPHe8jioOdjEcE98sOd7G4R4C1+wjR2yhK
	 LKwfrKRF8f+AyzhQFfINzLe7T6enAWawJLZuIcXicdhX1GkE9Ti3xWhpNnT7LOO53n
	 pUWd1Fs7T9DaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A22CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917125436.8888.4573314394985369897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318bf7fe851600f721caecaeae3f67f05b84d1c104f725aba5056d973766eaa0
Date: Wed, 23 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669171254
