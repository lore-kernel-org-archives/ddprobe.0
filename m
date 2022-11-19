Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80211382
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BDFFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668851454;
	bh=M6v0BwKcJHRgMDvISFIs4+9OgZGNEkanJkXKuq7UNOo=;
	h=To:Subject:From:Date:From;
	b=R/LioLoUkDDRqb+klSazWsvqlQwnXgm/2P8hk5YiVSAphXWi7t8FCc6TteYRhrPvo
	 GEqCJeqFQVnUQPL0f09LUQh/ppYMw6fk+h1thM8z8JCE81dyV1HOyKZ8nFdDbBex6R
	 t0f/x2ympfoYgqQ0ADOB/0Cg05V/aXeSi5eYqiPTPh4nPLxpZiGPveAx4fJe9a4OWI
	 B2v+aJaMX+gcg3qNt5yh23rdeP3AlDZuWzxMHdCoW/T/mT+k2CmKQs3nlMlSqtiXQg
	 UhPEYWP09rktLTj0v+Fne4fkvfLOJKb32gcefm54rPU0+Sv2SwTfqV1oLrlClpx3cg
	 G/HW4Lvp8/eiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C7CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885145438.11959.11749556437597316130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5f304f188e09143f2bc7b41b74c3e8bbcaeb20feacee1e597e340802d04245
Date: Sat, 19 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668851454
