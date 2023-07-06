Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CE0C2C4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 030D8C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688673429;
	bh=2lTQkVmCHvqOnTc6DnEzwYmzGe/zvZQqTevGDYexVWg=;
	h=To:Subject:From:Date:From;
	b=binDy5Iie1a1hrv9ahr5Ctoil9P7uUM+T4rYSrwvXkRAGe1pqoWFwcw2fLxWVFg72
	 RX90iCbZRahRW6c23PXD+uVoCFlmA7QtWXe2AkhLTNpzjy572rsvW1RFfzubzkaj8q
	 Ixe6I4tyxhPmh7DKRIQeJHFUto5DQ2oxKrwbSBUKhdEPF6BAiu+336wsD20gSICpsv
	 xvk/p7pkbZ65hvdsj3VHxDBFQ2n7yznV+dU3XtjvDSXO8TCJzTav4DOueWp1daxRgj
	 LJm61Z/mUD/cA7x9tqwFscfR0D+tKnYyPgmqzahL1AIin+1Fjh3P/K+6J5ML8nFtOd
	 Ws8D/B/YdmR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DD5EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867342878.11266.2617156653055272281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2cbed26cd5a7bcc6e7b2ee5ef92393c5d9efdf2ffef15acf74b38d614b849d
Date: Thu, 06 Jul 2023 19:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688673428
