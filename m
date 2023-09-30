Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5837495
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 13:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0755C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696081568;
	bh=4ulsMrxOAHOvGWTS5sr2Uuo+Eiqy9OB+EhZolVbJXHU=;
	h=To:Subject:From:Date:From;
	b=HR4d0KbTv/8wXZ3VOrHisuoYCJOOu9o4CR78SIlPIHopaLO3Zo+VgZu7mm2tH5uBS
	 ZJWPAvuR0+JkCAYJeDxuquguYCW9x/IkYAYi9ojeWhoBd8J414YJXHkKzdwZhRml8K
	 rY3E7sEYwHZCCemH0SLfPrVLVko/+h4xG6SAkGpx0bbYmhSkqHeDQkSLULbZ6GsBB/
	 sf+Sw+ZkU4iUxSjenE293hYhenclSO3ums/BnGtyfayRSzO9rcobyiEftM91pXxadF
	 IzzE9BHBqK6DQc8pZrzSz0n+Qd3HiljgkR2ebl39OWgjzE1UWFX6laNx09X8TiVDmM
	 T5rLkUnCjIrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0801E77371
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 13:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169608156868.11135.5215927574873537059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29b3dd4830ff834c8370e7146951b6d49f5c009a3529e59474b8ec8782768e8
Date: Sat, 30 Sep 2023 13:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696081568
